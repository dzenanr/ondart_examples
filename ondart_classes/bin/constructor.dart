
class Point {
  num x;
  num y;

  Point(this.x, this.y);
}

main() {
  var point = new Point(4, 2);
  assert(point.x == 4);
  assert(point.y == 2);
}
