main() {
  var numbers = new Set();
  numbers.addAll([1, 2, 3, 4, 5]);
  var sum = 0;
  for (final m in numbers) {
    sum = sum + m;
  }
  print(sum);
}

