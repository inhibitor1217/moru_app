import 'dart:ffi';
import 'dart:io';

import 'generated_bindings.dart';

void init() {
  _bindings.moru_init();
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
