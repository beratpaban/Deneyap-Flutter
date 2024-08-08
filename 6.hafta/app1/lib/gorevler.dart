import 'package:app1/gorev_listesi.dart';
import 'package:app1/models/gorev_modeli.dart';
import 'package:app1/yeni_gorev.dart';
import 'package:flutter/material.dart';

class Gorevler extends StatefulWidget {
  const Gorevler({super.key});

  @override
  State<Gorevler> createState() => _GorevlerState();
}

class _GorevlerState extends State<Gorevler> {
  List<GorevModeli> gorevler = [];
  var gorevSayi = 0;

  void gorevEkle({
    required String baslik,
    required DateTime tarih,
    required Icon simge,
  }) {
    setState(() {
      gorevler.add(GorevModeli(
        id: gorevSayi,
        baslik: baslik,
        tarih: tarih,
        simge: simge,
      ));
    });

    gorevSayi++;
  }

  void gorevSil(int gorevId) {
    setState(() {
      gorevler.removeWhere((gorev) => gorev.id == gorevId);
    });
  }

  void yeniGorevPenceresi(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (BuildContext ctx) {
          return SizedBox(
            height: 250,
            child: YeniGorev(
              gorevEkleyici: gorevEkle,
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Görev Listem"),
      ),
      body: GorevListesi(gorevlerim: gorevler, gorevSil: gorevSil),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => yeniGorevPenceresi(context),
      ),
    );
  }
}
