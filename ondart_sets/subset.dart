main() {
  var set1 = new Set();
  var set2 = new Set();
  var text1 = 'an intersection is a set whose items';
  var text2 = 'an intersection is a set';
  var text1Chars = text1.split('');
  var text2Chars = text2.split('');
  set1.addAll(text1Chars);
  set2.addAll(text2Chars);
  assert(set1.containsAll(set2));
  assert(!set2.containsAll(set1));
  assert(set2.containsAll(set2));
}

