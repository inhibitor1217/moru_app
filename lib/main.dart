import 'dart:async';

import 'package:flutter/material.dart';

import 'external/moru/moru.dart' as moru;

void main() {
  moru.init();

  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Timer? _tick;

  @override
  void initState() {
    super.initState();

    moru.run();

    _tick = Timer.periodic(const Duration(seconds: 5), (timer) {
      final peers = moru.knownPeers();
      debugPrint('Known peers: $peers');
    });
  }

  @override
  void dispose() {
    _tick?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}
