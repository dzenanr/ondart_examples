main() {
  var bolt = 9.58;
  print(bolt);
  print(bolt is num);
  // When compiled to JS, this test might return true when the left hand side is an int
  // print(bolt is double);
}

