import 'package:flutter/material.dart';

import 'external/moru/moru.dart' as moru;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('1 + 2 = ${moru.sum(1, 2)}'),
        ),
      ),
    );
  }
}
