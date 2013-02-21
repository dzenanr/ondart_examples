main() {
  var numbers = new Set.from([1, 2, 3, 4]);
  numbers.removeAll([1, 3]);
  assert(numbers.length == 2);
  print(numbers);
}

