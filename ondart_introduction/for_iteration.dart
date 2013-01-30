main() {
  var s = '';
  var numbers = [0, 1, 2, 3, 4, 5, 6, 7];
  for (var n in numbers) {
    s = '${s}${n} ';
  }
  print(s);
}

