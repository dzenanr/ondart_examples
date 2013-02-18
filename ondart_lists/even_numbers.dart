isEven(x) => x % 2 == 0 ? true : false;

main() {
  var list = [0, 1, 2, 3, 4, 5, 6, 7];
  var evens = [];
  Iterable iterable = list.where((x) => isEven(x));
  for (final e in iterable) {
    evens.add(e);
  }
  print(evens);
}

