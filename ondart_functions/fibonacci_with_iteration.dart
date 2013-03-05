String fibonacciIteration(int t) {
  int a = 0, b = 1, f = 1, n = 1;
  String result = '0' ' 1';
  while (n < t) {
    f = a + b;
    result = '$result $f';
    a = b;
    b = f;
    n = n + 1;
  }
  return result;
}

main() {
  int count = 12;
  String sequence =
      fibonacciIteration(count);
  print('Fibonacci with iteration: '
        '${count + 1} numbers sequence');
  print(sequence);
}

