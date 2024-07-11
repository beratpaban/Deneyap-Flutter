import 'dart:math'; // matematiksel işlemler için kullanılan kütüphane

void main() {
  // var sayi = 2; // değişken tanımı
  // print(sayi); // consola yazdırma işlemi
  // print(karesiniAl(sayi));

  // var text = 'deneme';
  // var ondalikli = 10.0;

  // print(sayi++);
  // print(sayi--);

  /* OPERATÖRLER */
  var number1 = 12;
  print(number1);
  print(
      number1++); // önce ekrana yazdırır sonra değişkenin değerini 1 arttırır.
  print(
      ++number1); // önce değişkenin değerini 1 artıyor sonra ekrana yazdırıyor.
  print(number1);
  number1 = 12;
  var number2 = 10;
  var toplam = number1 + number2;
  var cikarma = number1 - number2;
  var carpma = number1 * number2;
  var bolme = number1 / number2;
  var mod = number1 % number2;
  print(toplam);
  print(cikarma);
  print(carpma);
  print(bolme);
  print(mod);
  print('-----------------------------------');
  print(number1 >= number2); // true
  print(number1 == number2); // false
  print(number1 != number2); // true
  print('-----------------MANTIKSAL OPERATÖR------------------');
  var number3 = 10;
  var number4 = 40;
  //mantıksal ve (AND)
  print(number1 > number2 && number2 == number4);
  //mantıksal veya (OR)
  print(number1 > number2 || number2 == number4);

  String yazi = 'Deneme'; // String türünde değiken
  int intTurundeDegisken = 12;
  double ondalikliSayi1 = 10.3;
  print(ondalikliSayi1);
}

num karesiniAl(sayim) {
  return (pow(sayim, 4)); // kuvvet almak için gerekli fonksiyon (pow)
}

// tekli yorum satırı

/* 
birden fazla
satır için
yorum sayırı ifadesi
*/