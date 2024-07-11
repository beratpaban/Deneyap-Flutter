// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IlkWidgetim(),
    );
  }
}

class IlkWidgetim extends StatelessWidget {
  const IlkWidgetim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              const Text(
                'Merhaba Dünya!',
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.w900,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Hoşgeldin!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
