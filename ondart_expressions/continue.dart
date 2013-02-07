main() {
  var ints = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  for (int i in ints) {
    if (i.isEven) continue;
    print(i);
  }
}

