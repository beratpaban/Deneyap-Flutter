import 'package:app4/cekmece.dart';
import 'package:flutter/material.dart';

class Giris extends StatelessWidget {
  const Giris({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      drawer: Cekmece(),
      body: Center(
        child: Container(
          child: Center(
            child: Text('Giriş Sayfası'),
          ),
        ),
      ),
    );
  }
}
