main() {
  var map = {'gold': 1, 'silver': 2, 'bronze': 3};
  map.forEach((k,v) => print(k));
  map.forEach((k, v) => print(v));
  map.forEach((k, v) => print('$k: $v'));
}

