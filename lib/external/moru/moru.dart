import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:flutter/foundation.dart';

import 'generated_bindings.dart';

typedef NativeLogCallback = Void Function(Pointer<Void>, Int);

void init() {
  _bindings.moru_init();

  // Register Dart logger to be called via FFI
  void log(Pointer<Void> buf, int len) {
    var msg = buf.cast<Utf8>().toDartString();
    if (msg.endsWith('\n')) {
      msg = msg.substring(0, msg.length - 1);
    }

    if (kDebugMode) {
      debugPrint(msg);
    }

    // we have the responsibility to free the buffer
    _bindings.moru_log_ack(buf);
  }
  final logFunction = NativeCallable<NativeLogCallback>.listener(log);
  _bindings.moru_register_logger(logFunction.nativeFunction);
}

void run() => _bindings.moru_run();

const _libName = 'moru';

final _dylib = () {
  if (Platform.isAndroid || Platform.isLinux) {
    return DynamicLibrary.open('lib$_libName.so');
  }
  throw UnsupportedError('Unsupported platform: ${Platform.operatingSystem}');
}();

final _bindings = NativeLibrary(_dylib);
