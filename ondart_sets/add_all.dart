main() {
  var abc = new Set();
  abc.addAll(['a', 'b', 'c']);
  var bcd = new Set();
  bcd.addAll(['b', 'c', 'd']);
  var abcd = new Set.from(abc);
  abcd.addAll(bcd);
  assert(abcd.length == 4);
  assert(abcd.containsAll(['a', 'b', 'c', 'd']));
  print(abcd);
}

