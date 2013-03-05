List cells(int length) {
  var cells = new List.fixedLength(length);
  for (var i = 0; i < length; i++) {
    cells[i] = new List.fixedLength(length);
  }
  return cells;
}

main() {
  var length = 4;
  var fourByFour = cells(length);
  print(fourByFour);
  for (var i = 0; i < length; i++) {
    for (var j = 0; j < length; j++) {
      fourByFour[i][j] = '($i, $j)';
    }
  }
  print(fourByFour);
}

