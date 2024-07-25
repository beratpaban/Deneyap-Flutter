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
      title: 'Flutter Arayüzleri',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(
        appBarTitle: 'Flutter Arayüzleri',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String appBarTitle;
  const MyHomePage({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        backgroundColor: Colors.orange,
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 45.0),
                  child: Text(
                    'Sinek Kuşu',
                    style: TextStyle(
                      fontSize: 64,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  width: 600,
                  child: Text(
                    'Sinek kuşu veya kolbri, sinek kuşugiller (Trochilidae) familyasını oluşturan küçük kuş türlerinin ortak adı. Havada asılı kalıp kanatlarını çok hızlı çırparak durabilmeleriyle tanınırlar. Türüne bağlı olarak saniyede 15 ile 80 kez kanat çırpabilirler',
                    style: TextStyle(
                      overflow: TextOverflow.clip,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 90.0),
                  child: Container(
                    width: 500,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.thumb_up_outlined,
                          color: Colors.blue,
                          size: 40,
                        ),
                        Icon(
                          Icons.favorite_outline,
                          color: Colors.pink,
                          size: 40,
                        ),
                        Icon(
                          Icons.share_outlined,
                          color: Colors.greenAccent,
                          size: 40,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Container(
                    width: 500,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 25,
                            ),
                            Icon(
                              Icons.star_outline,
                              color: Colors.orange,
                              size: 25,
                            ),
                          ],
                        ),
                        Text('146 Oylama'),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Sanatçı:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text('Onur Dönmez'),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.lightGreen,
                      ),
                      Text('Bornava / İzmir ')
                    ],
                  ),
                )
              ],
            ),
          ),
          Image.asset('assets/sinek_kusu.jpg')
        ],
      ),
    );
  }
}
