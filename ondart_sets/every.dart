main() {
  var numbers = new Set();
  numbers.addAll([1, -1, 3, -3]);
  assert(numbers.every((i) => i > -4));
}

