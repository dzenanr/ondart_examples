main() {
  var list = [7, 12, 29, 57, 88, 111, 164];
  var i = 0, s = '';
  do {
    s = '${s}${list[i]} ';
    i += 1;
  } while (i < list.length);
  print(s);
}

