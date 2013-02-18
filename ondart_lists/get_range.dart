main() {
  var list = [0, 1, 2, 3, 4, 5, 6, 7, 8];
  var range = list.getRange(1, 5);
  print(range);
  assert(list != range);
  assert(!identical(list, range));
}

