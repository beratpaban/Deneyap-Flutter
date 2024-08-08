import 'package:flutter/material.dart';

class ResimKutusu extends StatelessWidget {
  final String yol;
  final Color renk1;
  final Color renk2;
  final String title;
  const ResimKutusu({
    super.key,
    required this.yol,
    required this.renk1,
    required this.renk2,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 200,
          padding: const EdgeInsets.all(25),
          margin: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [renk1, renk2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Image.asset(
            yol,
            fit: BoxFit.fill,
          ),
        ),
        Text(title),
      ],
    );
  }
}
