// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BenimAnaEkranim(),
    );
  }
}

class BenimAnaEkranim extends StatelessWidget {
  const BenimAnaEkranim({super.key});
  // Column widgeti dikey eksende birden fazla widget kullanmak için kullanılır
  // Row widgeti yatay eksende birden fazla widget kullanmak için kullanılır
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //mainAxisAlignment: MainAxisAlignment.center, ekranı ana eksende (column olduğu için dikey eksende) ortalar
          //mainAxisAlignment: MainAxisAlignment.spaceAround, children içerisindeki widgetler etrafında (dikey eksende) boşluk bırakır
          //mainAxisAlignment: MainAxisAlignment.spaceBetween, children içerisindeki widgetlerin arasında boşluk bırakır.
          children: [
            Icon(
              Icons.account_circle_outlined,
              color: Colors.indigo,
              size: 300,
            ),
            Text(
              "Lores, when an unknoike Aldus PageMaker including versions of Lorem Ipsum.",
              style: TextStyle(
                fontFamily: "Montserrat",
                color: Colors.red, // font rengini ayarlama
                fontSize: 32, // font boyutunu ayarlama
                fontWeight: FontWeight.w900, // font kalınlığını ayarlama
              ),
              textAlign: TextAlign.left, // yazıyı sola dayalı yazmaya başlar
              //overflow: TextOverflow.ellipsis,
            ),
            // GOOGLE FONTS KULLANIMI:
            Text(
              "Google Fonts Paketi ile font belirlendi",
              style: GoogleFonts.poppins(
                color: Colors.deepOrange,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
