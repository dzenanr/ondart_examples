main() {
  var abc = new Set();
  abc.add('a');
  abc.add('b');
  abc.add('c');
  abc.add('ab');
  abc.add('bc');
  var ch2 = abc.where((m) => m.length == 2);
  print(ch2.toSet());
}

