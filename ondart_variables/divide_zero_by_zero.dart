main() {
  var zero = 0 / 0;
  if (zero.isInfinite) {
    print('infinite "number"');
  } else {
    print('number');
  }
}

