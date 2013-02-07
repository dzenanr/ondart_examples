main() {
  var nos = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  for (var n in nos) {
    if (n.isOdd) continue;
    print(n);
  }
}

