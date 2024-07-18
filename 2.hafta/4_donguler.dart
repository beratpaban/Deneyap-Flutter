void main() {
  //for döngüsü
  for (int i = 0; i <= 10; i++) {
    print(i);
  }
  var elementler = ['hidrojen', 'helyum', 'lityum'];
  for (var element in elementler) {
    print(element);
  }
  //while döngüsü
  while (elementler.isNotEmpty) {
    var ilkElement = elementler.first;
    //print(ilkElement);
    elementler.removeAt(0);
  }
}
