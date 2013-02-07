main() {
  var x = 9;
  var y = 12;
  var z = 7;

  var g = x + y < 22 && x/y != 9 || z == 7;
  assert(g);

  var h = ((((x + y) < 22) &&
      ((x/y) != 9)) || (z == 7));
  assert(h);
}

