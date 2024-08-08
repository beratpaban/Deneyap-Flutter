import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class YeniGorev extends StatefulWidget {
  final Function gorevEkleyici;
  const YeniGorev({super.key, required this.gorevEkleyici});

  @override
  State<YeniGorev> createState() => _YeniGorevState();
}

class _YeniGorevState extends State<YeniGorev> {
  DateTime tarih = DateTime.now();
  String? baslik;
  String? simge = "Okul";
  final baslikKontrol = TextEditingController();
  tarihSec() {
    showDatePicker(
            context: context,
            firstDate: DateTime(DateTime.now().year),
            lastDate: DateTime(DateTime.now().year + 3),
            initialDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        tarih = pickedDate;
      });
    });
  }

  gorevUret() {
    if (baslikKontrol.text.isEmpty) {
      hataBildir("Lütfen Başlık Bilgisini Giriniz...");
      return;
    } else {
      baslik = baslikKontrol.text;
    }
    Icon? simgem;
    switch (simge) {
      case "Okul":
        simgem = const Icon(Icons.school, color: Colors.red, size: 32);
        break;
      case "Ev":
        simgem = const Icon(Icons.home, color: Colors.red, size: 32);
        break;
      case "İş":
        simgem = const Icon(Icons.work, color: Colors.red, size: 32);
        break;
      case "Eğlence":
        simgem = const Icon(Icons.sports_esports, color: Colors.red, size: 32);
        break;
      default:
        simgem = const Icon(Icons.question_mark, color: Colors.red, size: 32);
    }
    widget.gorevEkleyici(baslik: baslik, tarih: tarih, simge: simgem);
    Navigator.of(context).pop();
  }

  hataBildir(String mesaj) {
    final hataMesaji = AlertDialog(
      title: const Text('Hata'),
      content: Text(mesaj),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Tamam'),
          child: const Text('Tamam'),
        ),
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return hataMesaji;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: baslikKontrol,
                  decoration: const InputDecoration(
                    labelText: "Açıklama Giriniz",
                    icon: Icon(Icons.textsms),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                child: DropdownButton<String>(
                  value: simge,
                  elevation: 8,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  icon: const Icon(Icons.arrow_downward),
                  onChanged: (String? newValue) {
                    setState(() {
                      simge = newValue!;
                    });
                  },
                  items: <String>['Okul', 'Ev', 'İş', 'Eğlence']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(value: value, child: Text(value));
                  }).toList(),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    labelText: (DateFormat.yMd().format(tarih.toLocal())),
                    icon: const Icon(Icons.date_range),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                child: TextButton(
                  onPressed: tarihSec,
                  child: const Text('Tarih Seç'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: ElevatedButton(
              onPressed: gorevUret,
              child: const Text('Ekle'),
            ),
          )
        ],
      ),
    );
  }
}
