main() {
  var numbers = new Set();
  numbers.addAll([1, 2, 3, 4, 5]);
  var sum = numbers.fold(0,
      (prev, element) => prev + element);
  print(sum);
}

