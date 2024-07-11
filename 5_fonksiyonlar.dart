void main() {
  hesapla(123, 18);
  print(ciftMi(111114));
}

double hesapla(double fiyat, double kdv) {
  double kdvliFiyat;
  kdvliFiyat = fiyat + (fiyat * (kdv / 100));
  print(kdvliFiyat);
  return kdvliFiyat;
}

bool ciftMi(int sayi1) {
  return (sayi1 % 2 == 0) ? true : false;
}
