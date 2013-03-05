main() {
  var numbers = new Set();
  numbers.addAll([1, 2, 3, 4, 5]);
  var shift = numbers.map((m) => m + 1).toSet();
  assert(shift is Iterable);
  print(shift.toSet());
}

