main() {
  var list = [0, 1, 2, 3, 4, 5, 6, 7];
  var odds = [];
  for (var e in list.where(
      (x) => x % 2 > 0 ? true : false)) {
    odds.add(e);
  }
  print(odds);
}

