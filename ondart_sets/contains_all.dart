main() {
  var abc = new Set();
  abc.addAll(['a', 'b', 'c']);
  assert(abc.containsAll(['a', 'b', 'c']));
}

