int fibonacciRecursion(int t) {
  if (t == 0) {
    return 0;
  } else if (t == 1) {
    return 1;
  } else {
    return fibonacciRecursion(t-1) +
        fibonacciRecursion(t-2);
  }
}

main() {
  int position = 11;  // from 0 position
  int positionNumber = fibonacciRecursion(position);
  print('Fibonacci with recursion: '
        '${position} is a position in the sequence');
  print('Number in that position: '
        '${positionNumber}');
}

