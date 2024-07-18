import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        brightness: Brightness.light, // açık tema oluşturma
        primaryColor: Colors.greenAccent, // birincil renk atama işlemi
        shadowColor: Colors.redAccent, // gölgelerin rengini belirtme
        textTheme: TextTheme(
          // google fonts paketi kullanılarak displayLarge isiminde bir text teması oluşturduk
          displayLarge: GoogleFonts.lato(
            fontSize: 60,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deneme'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // İnternetten gelen resim
              // Image.network(
              //   "https://images.pexels.com/photos/40984/animal-ara-macao-beak-bird-40984.jpeg?cs=srgb&dl=pexels-public-domain-pictures-40984.jpg&fm=jpg",
              //   height: 600,
              //   width: 300,
              // ),
              Container(
                height: 800,
                width: 400,
                decoration: BoxDecoration(color: Colors.black),
                // uygulamanın kendisinde bu fotoğrafın olmasını istiyorsak kullandığımız widget
                // pubspec.yaml dosyasına eklemeyi unutmayın ! TABLARA DİKKAT!!!!
                child: Image.asset(
                  "assets/images/bird.jpg",
                  fit: BoxFit.cover, // bulunduğu ortamı kaplaması
                  color: Colors.red,
                  colorBlendMode: BlendMode.multiply,
                ),
              ),
              Text(
                'Merhaba',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge, // yukarıda tanımladığımız fontun kullanımı
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).hoverColor,
                ),
                child: Text('azdlnvlzdfks'),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).hoverColor,
                ),
                child: Text('azdlnvlzdfks'),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).hoverColor,
                ),
                child: Text('azdlnvlzdfks'),
              ),

              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).hoverColor,
                ),
                child: Text('azdlnvlzdfks'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ben bir butonum'),
                style: ElevatedButton.styleFrom(
                  shadowColor: Theme.of(context).shadowColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
