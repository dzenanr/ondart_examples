
class Point {
  num x;
  num y;

  Point();
  Point.from(Point point) {
    x = point.x;
    y = point.y;
  }
}

main() {
  var point1 = new Point();
  point1.x = 4;
  point1.y = 2;
  var point2 = new Point.from(point1);
  assert(point1.x == point2.x &&
         point1.y == point2.y);
}