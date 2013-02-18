main() {
  var list = [7, 12, 29, 57, 88, 111, 164];
  var s = '';
  Iterator i = list.iterator;
  while (i.moveNext()) {
    s = '${s}${i.current} ';
  }
  print(s);
}

