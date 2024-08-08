import 'package:app1/gorevler.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Görev Listem',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const Gorevler(),
    );
  }
}
