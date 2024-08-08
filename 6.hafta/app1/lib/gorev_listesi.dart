// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:app1/models/gorev_modeli.dart';

class GorevListesi extends StatelessWidget {
  final List<GorevModeli> gorevlerim;

  final Function gorevSil;
  const GorevListesi({
    super.key,
    required this.gorevlerim,
    required this.gorevSil,
  });

  @override
  Widget build(BuildContext context) {
    return gorevlerim.isEmpty
        ? const ListTile(
            title: Text("Henüz Görev Girilmedi"),
            leading: Icon(Icons.question_mark),
          )
        : ListView.builder(
            itemCount: gorevlerim.length,
            itemBuilder: (context, index) {
              GorevModeli gm = gorevlerim[index];
              return (Card(
                elevation: 5,
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                child: ListTile(
                  leading: gm.simge,
                  title: Text(gm.baslik),
                  subtitle: Text(DateFormat.yMd().format(gm.tarih)),
                  trailing: TextButton(
                    child: const Icon(
                      Icons.check_box_outlined,
                      size: 28,
                    ),
                    onPressed: () => gorevSil(gm.id),
                  ),
                ),
              ));
            });
  }
}
