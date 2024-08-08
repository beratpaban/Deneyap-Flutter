import 'package:app4/ayarlar_sayfasi.dart';
import 'package:app4/cekmece.dart';
import 'package:app4/giris.dart';
import 'package:app4/sepetim.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/ayarlar': (context) => AyarlarSayfasi(),
        '/sepetim': (context) => Sepetim(),
        '/': (context) => Giris(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      drawer: Cekmece(),
    );
  }
}
