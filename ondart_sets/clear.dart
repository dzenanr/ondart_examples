main() {
  var numbers = new Set();
  numbers.addAll([1, 2, 3, 4, 5]);
  assert(numbers.length == 5);
  numbers.clear();
  assert(numbers.isEmpty);
  print(numbers);
}

