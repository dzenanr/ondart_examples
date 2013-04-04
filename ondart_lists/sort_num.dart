main() {
  var list = [3, 44.2, 2.7, 66, 43];
  list.sort(
      (a, b) {
        return a.compareTo(b);
      }
  );
  print(list.reversed.toList());
}

