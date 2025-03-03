import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:flutter/foundation.dart';
import 'package:moru_app/external/moru/discovery/ffi.pbserver.dart';
import 'package:moru_app/external/moru/peer.dart';

import 'generated_bindings.dart';

typedef NativeLogCallback = Void Function(Pointer<Void>, Int);

void init() {
  _bindings.moru_init();

  // Register Dart logger to be called via FFI
  void log(Pointer<Void> buf, int len) {
    try {
      final msg = buf.cast<Utf8>()
        .toDartString(length: len)
        .replaceAll('\n', '');
      if (kDebugMode) {
        debugPrint(msg);
      }
    } on FormatException catch (e) {
      if (kDebugMode) {
        debugPrint('Failed to decode log message: $e, skipped $len bytes');
      }
    } finally {
      // we have the responsibility to free the buffer
      calloc.free(buf);
    }
  }
  final logFunction = NativeCallable<NativeLogCallback>.listener(log);
  _bindings.moru_register_logger(logFunction.nativeFunction);
}

void run() => _bindings.moru_run();

List<Peer> knownPeers() {
  final req = KnownPeersRequest();
  final reqBuffer = req.writeToBuffer();

  // allocate native memory for FFI
  final reqData = calloc<Uint8>(reqBuffer.length);
  reqData.asTypedList(reqBuffer.length).setAll(0, reqBuffer);
  final reqParams = calloc<ffi_t>();
  reqParams.ref.data = reqData.cast();
  reqParams.ref.len = reqBuffer.length;

  final res = _bindings.moru_known_peers(reqParams.ref);

  if (res.data == nullptr) {
    throw Exception('Failed to get known peers');
  }
  final resData = res.data.cast<Uint8>().asTypedList(res.len);
  final knownPeersResult = KnownPeersResult.fromBuffer(resData);

  // clean up allocated native memory used by FFI
  calloc.free(reqData);
  calloc.free(reqParams);
  if (res.data != nullptr) {
    calloc.free(res.data);
  }

  return knownPeersResult.peers
    .map((p) => Peer(
      id: p.id,
      sessionId: p.sessionId,
      address: p.address,
      username: p.username,
      hostname: p.hostname,
      role: p.role,
    ))
    .toList();
}

const _libName = 'moru';

final _dylib = () {
  if (Platform.isAndroid || Platform.isLinux) {
    return DynamicLibrary.open('lib$_libName.so');
  }
  throw UnsupportedError('Unsupported platform: ${Platform.operatingSystem}');
}();

final _bindings = NativeLibrary(_dylib);
