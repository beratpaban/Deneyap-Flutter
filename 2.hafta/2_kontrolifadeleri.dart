void main() {
  var sayi1 = 4;
  var sayi2 = 5;
  var sonuc = (sayi1 % 2 == 0) ? 'çift' : 'tek'; // durumsal atama
  print(sonuc);

  var sonuc2 = 'cift';
  if (sayi2 % 2 == 0) {
    sonuc2 = 'cift';
  } else {
    sonuc2 = 'tek';
  }
  print(sonuc2);

  var sayi3 = 15;
  if (sayi3 % 2 == 0) {
    print('sayi 2ye bölünebilir'); // ilk çalışcak kısım
  } else if (sayi3 % 3 == 0) {
    print('sayi 3e bölünebilir'); // ikinci çalışacak kısım
  } else if (sayi3 % 5 == 0) {
    print('sayi 5e bölünebilir'); // üçüncü çalışacak kısım
  } else {
    print('sayi asal sayıdır'); // en son çalışacak kısım
  }
  print('--------------NULL SAFETY-----------------');
  String? text1; // text1 ifadesi boş olabilir.
  String? text2;
  //print(text2!.length);

  print('--------------SWITCH CASE--------------------------');
  var switchNumaram = 2;
  switch (switchNumaram) {
    case 1:
      print('1.case çalıştı');
      break;
    case 2:
      print('2.Case Çalıştı');
    default:
      print('Default Çalıştı');
  }
}
