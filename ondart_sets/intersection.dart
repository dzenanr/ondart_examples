main() {
  var set1 = new Set();
  var set2 = new Set();
  var text1 = 'an intersection is a set whose items';
  var text2 = 'a subset has all of its items included';
  var text1Chars = text1.split('');
  var text2Chars = text2.split('');
  set1.addAll(text1Chars);
  set2.addAll(text2Chars);
  var inter = set1.intersection(set2);
  print(inter);
}

