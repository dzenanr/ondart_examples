Function incrementer() {
  return (num n) => n + 1;
}

main() {
  var c = 2;
  var i = incrementer();
  var r = i(c);
  assert(r == c + 1);
  print('incrementer: $r');
}

