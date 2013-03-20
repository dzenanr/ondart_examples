main() {
  var list = [0, 1, 2, 3, 4, 5, 6, 7, 8];
  var range = list.sublist(1, 6);
  print(range);
  assert(list != range);
  assert(!identical(list, range));
}

