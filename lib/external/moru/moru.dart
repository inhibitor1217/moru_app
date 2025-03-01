import 'dart:ffi';
import 'dart:io';

import 'generated_bindings.dart';

int sum(int a, int b) => _bindings.sum(a, b);

const _libName = 'moru';

final _dylib = () {
  if (Platform.isAndroid || Platform.isLinux) {
    return DynamicLibrary.open('lib$_libName.so');
  }
  throw UnsupportedError('Unsupported platform: ${Platform.operatingSystem}');
}();

final _bindings = NativeLibrary(_dylib);
