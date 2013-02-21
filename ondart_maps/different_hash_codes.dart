main() {
  var positions = new Map();
  var position_2_3 = [2, 3];
  assert(position_2_3 is List);
  print(position_2_3);
  print(position_2_3.hashCode);
  print([2, 3].hashCode);
  positions[position_2_3] = '(2,3)';
  print(positions);
  var pos_2_3 = positions[position_2_3];
  print(pos_2_3);
  var posit_2_3 = positions[[2, 3]];
  assert(posit_2_3 == null);
}



