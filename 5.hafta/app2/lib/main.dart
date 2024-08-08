import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future getData() async {
    final respone = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/'));

    if (respone.statusCode == 200) {
      print(jsonDecode(respone.body));
    } else {
      print("Hata ile karşılaşıldı");
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Container();
  }
}
