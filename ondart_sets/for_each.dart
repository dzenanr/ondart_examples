main() {
  var numbers = new Set();
  numbers.addAll([1, 2, 3, 4, 5]);
  var shift = new Set();
  numbers.forEach((m) => shift.add(m + 1));
  print(shift);
}

