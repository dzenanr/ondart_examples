main() {
  var list = [7, 12, 29, 57, 88, 111, 164];
  var i = 0, s = '';
  while (i < list.length) {
    s = '${s}${list[i]} ';
    if (s.length > 16) {
      break;
    }
    i += 1;
  }
  print(s);
}

