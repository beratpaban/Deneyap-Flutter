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
      home: GridViewKullanim(),
    );
  }
}

//Gridview
class GridViewKullanim extends StatelessWidget {
  const GridViewKullanim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        scrollDirection: Axis.vertical, // dikeyde kaydırma işlemi
        crossAxisCount: 5, //bir satırda olmasını istediğim miktar
        children: [
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'aaaaa',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'aaaaa',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'aaaaa',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'aaaaa',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'aaaaa',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'aaaaa',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'aaaaa',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'aaaaa',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'aaaaa',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'aaaaa',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'aaaaa',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'aaaaa',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'aaaaa',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'aaaaa',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'aaaaa',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'aaaaa',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// listview.builder kullanım örneği
class DigerListViewOrnegi extends StatelessWidget {
  const DigerListViewOrnegi({super.key});

  @override
  Widget build(BuildContext context) {
    var alisverisListem = [
      "EKMEK",
      "SÜT",
      "YOĞURT",
      "MAKARNA",
      "MEYVE",
      "SODA",
      "ÇAY"
    ];
    return Scaffold(
      body: ListView.builder(
        scrollDirection:
            Axis.vertical, // kayma yönü (listeleme yönü) (şuanda dikeyde)
        itemCount: alisverisListem
            .length, // kullanacağım kadar belirlediğim childin sayısı
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(0, 5, 100, 5),
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
            ),
            child: Center(
              child: Text(
                alisverisListem[index],
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 18,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class NormalListViewKullanimi extends StatelessWidget {
  const NormalListViewKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.purple,
              height: 200,
              child: Center(
                child: Text(
                  '1.Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.purple,
              height: 200,
              child: Center(
                child: Text(
                  '2.Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.purple,
              height: 200,
              child: Center(
                child: Text(
                  '3.Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.purple,
              height: 200,
              child: Center(
                child: Text(
                  '4.Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.purple,
              height: 200,
              child: Center(
                child: Text(
                  '5.Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.purple,
              height: 200,
              child: Center(
                child: Text(
                  '6.Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.purple,
              height: 200,
              child: Center(
                child: Text(
                  '7.Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.purple,
              height: 200,
              child: Center(
                child: Text(
                  '5.Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.purple,
              height: 200,
              child: Center(
                child: Text(
                  '6.Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.purple,
              height: 200,
              child: Center(
                child: Text(
                  '7.Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.purple,
              height: 200,
              child: Center(
                child: Text(
                  '5.Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.purple,
              height: 200,
              child: Center(
                child: Text(
                  '6.Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.purple,
              height: 200,
              child: Center(
                child: Text(
                  '7.Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.purple,
              height: 200,
              child: Center(
                child: Text(
                  '5.Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.purple,
              height: 200,
              child: Center(
                child: Text(
                  '6.Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.purple,
              height: 200,
              child: Center(
                child: Text(
                  '7.Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
