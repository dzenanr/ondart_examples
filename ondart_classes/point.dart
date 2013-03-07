
class Point {
  num x;
  num y;
}

main() {
  var point = new Point();
  point.x = 4;             // use the set method for x
  assert(point.x == 4);    // use the get method for x
  assert(point.y == null); // uninitialized y
}
