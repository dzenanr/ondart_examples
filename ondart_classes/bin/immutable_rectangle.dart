
class Rectangle {
  final num width;
  final num height;

  const Rectangle(this.width, this.height);
}

main() {
  var r1 = new Rectangle(8, 4);
  assert(r1.width == 8);
  //r1.width = 5;
}
