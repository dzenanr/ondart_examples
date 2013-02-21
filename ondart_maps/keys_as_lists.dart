main() {
  var positions = new Map();
  positions[[1, 2]] = '(1,2)';
  positions[[2, 3]] = '(2,3)';
  positions[[3, 2]] = '(3,2)';
  positions[[4, 1]] = '(4,1)';
  positions[[5, 2]] = '(5,2)';
  print(positions);
  assert(positions[[2, 3]] != null);
}

