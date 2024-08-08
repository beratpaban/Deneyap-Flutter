import 'package:app1/resim_kutusu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Kompozit Bileşenler',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: 600,
        height: 600,
        child: Column(
          children: [
            ResimKutusu(
              yol: 'assets/cilek.png',
              renk1: Colors.blue,
              renk2: Colors.yellow,
              title: 'Çilek',
            ),
            ResimKutusu(
              yol: 'assets/muz.png',
              renk1: Colors.red,
              renk2: Colors.white,
              title: 'Muz',
            ),
          ],
        ),
      ),
    );
  }
}
