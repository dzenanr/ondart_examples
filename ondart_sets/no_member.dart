main() {
  var numbers = new Set();
  numbers.addAll([1, 2, 3, 4, 5]);
  assert(!numbers.remove(7));
  assert(numbers.length == 5);
  print(numbers);
}

