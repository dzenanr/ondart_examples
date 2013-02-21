main() {
  var fiveNumbers = new Set();
  fiveNumbers.addAll([1, 2, 3, 4, 5, 5]);
  fiveNumbers.add(3);
  assert(fiveNumbers.length == 5);
  print(fiveNumbers);
}

