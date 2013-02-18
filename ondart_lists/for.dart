main() {
  var list = [7, 12, 29, 57, 88, 111, 164];
  var s = '';
  for (var i = 0; i < list.length; i++) {
    s = '${s}${list[i]} ';
  }
  print(s);
}

