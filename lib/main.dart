import 'package:flutter/material.dart';
import 'package:zoodeng/screens/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zoodeng',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Zoodeng'),
          backgroundColor: Colors.brown,
          centerTitle: true,
        ),
        body: const Item(),
      ),
    );
  }
}
