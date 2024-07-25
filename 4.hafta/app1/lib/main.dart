// ignore_for_file: sort_child_properties_last, prefer_const_constructors

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              child: Container(
                margin: EdgeInsets.all(
                    30), // dışdaki containera göre 30 px boşluk bırak
                decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                ),
              ),
              padding: EdgeInsets.all(
                  30), // içteki containera göre 30 px boşluk bırak
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                border: Border.symmetric(
                  // simetrik olarak eklemek istersek .symmetric kullanılır
                  horizontal: BorderSide(
                    width: 5,
                    color: Colors.orangeAccent,
                  ),
                  vertical: BorderSide(
                    color: Colors.orangeAccent,
                    width: 5,
                  ),
                ),
                // border: Border.all( containerın her tarafından köşelik eklemek istersek .all kullanılır
                //   width: 10,
                //   color: Colors.deepOrange,
                //  ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(
              child: FlutterLogo(),
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
