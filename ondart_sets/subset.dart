main() {
  var set1 = new Set();
  var set2 = new Set();
  var text1 = 'an intersection is a set whose items';
  var text2 = 'an intersection is a set';
  var text1Chars = text1.split('');
  var text2Chars = text2.split('');
  set1.addAll(text1Chars);
  set2.addAll(text2Chars);
  assert(set2.isSubsetOf(set1));
  assert(!set1.isSubsetOf(set2));
  assert(set2.isSubsetOf(set2));
}

