import 'package:flutter/material.dart';
import 'package:moru_app/widgets/peer_list_view.dart';

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
  @override
  void initState() {
    super.initState();
    moru.run();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('moru'),
          centerTitle: true,
        ),
        body: const PeerListView(),
      ),
    );
  }
}
