import 'package:app3/main.dart';
import 'package:flutter/material.dart';

class DigerSayfa extends StatelessWidget {
  const DigerSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          children: [
            Text(
              'DİĞER SAYFA',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(
                        context); // bir önceki sayfaya gitmek için gereken yapı
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 36,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
