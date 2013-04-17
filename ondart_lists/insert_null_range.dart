main() {
  var list = [0, 1, 2, 3];
  print(list);
  list.replaceRange(3, 3, new List(3));
  print(list);
}

