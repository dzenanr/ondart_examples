main() {
  var list = [7, 12, 29, 57, 88, 111, 164];
  var s = '';
  list.forEach(
      // if break used instead of null then error
      (e) => s.length <= 16 ? s = '${s}${e} ' : null);
  print(s);
}

