class Rectangle {
  num width;
  num height;

  Rectangle(this.width, this.height);
}



class Square extends Rectangle {
  num length;

  Square(length) : super(length, length) {
    this.length = length;
  }
}

main() {
  var s1 = new Square(2);
  assert(s1.width == s1.length);
  assert(s1.height == s1.length);
}