void main() {
  Insan insan1 = Insan('Berat', 'Paban', 24);
  Insan insan2 = Insan('Ferhat', 'Yılmaz', 32);
  insan1.ekranaYaz();
  insan2.ekranaYaz();
  Kopek kopek = Kopek();
  kopek.beslenme();
}

//İnsan sınıfı
class Insan {
  String? isim;
  String? soyIsim;
  int? yas;

  //Constructors-Yapıcı-Kurucu Metotlar
  // Metotlar sınıfın ismi ile aynı olmak zorundalar
  Insan(String isim, soyisim, int yas) {
    this.isim = isim;
    this.soyIsim = soyisim;
    this.yas = yas;
  }

  void ekranaYaz() {
    print('Merhaba Ben $isim $soyIsim ve ben $yas yaşındayım');
  }
}

class Hayvan {
  void beslenme() {
    print('Hayvan beslenir');
  }
}

class Kopek extends Hayvan {
  void beslenme() {
    print('kopek beslenir');
  }
}
