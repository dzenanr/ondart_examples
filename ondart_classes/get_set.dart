
class Rectangle {
  num x;
  num y;
  num width;
  num height;

  Rectangle(this.x, this.y, this.width, this.height);

  num get right => x + width;
  set right(num value) => x = value - width;

  num get down => y + height;
  set down(num value) => y = value - height;
}

main() {
  var rect = new Rectangle(20, 30, 80, 40);
  assert(rect.x == 20);
  rect.right = 40;
  assert(rect.x == -40);
}
