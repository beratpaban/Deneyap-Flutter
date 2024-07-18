void main() {
  //Liste tanımlama işlemleri
  var sayilar = [1, 2, 3, 4];
  var textlerim = ['Merhaba', 'Ben', 'Berat'];
  print(textlerim[0]); // ilk elemanı yazdırır
  print(textlerim); // tüm listeyi yazdırır.

  //Listeye eleman ekleme
  sayilar.add(5);
  print(sayilar);
  //Listeden eleman silme
  sayilar.removeAt(2);
  print(sayilar);
  //Son indexteki elemanı sil
  sayilar.removeLast();
  print(sayilar);
  //Aralıklı silme işlemi
  var sayilar2 = [10, 2, 3, 90, 21, 45, 68, 86, 47];
  sayilar2.removeRange(2, 4);
  print(sayilar2);
  //Listenin belirli indexine elaman atama
  textlerim.insert(1, 'SA');
  print(textlerim);
}
