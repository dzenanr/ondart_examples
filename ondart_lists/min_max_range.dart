List<int> minmax(int min, int max) =>
    new MinMax(min, max).list;

class MinMax {
  var list = new List<int>();
  MinMax(int min, int max) {
    for (var i = min; i <= max; i++) {
      list.add(i);
    }
  }
}

void main() {
  var s = '';
  for (var i in minmax(0, 4)) {
    s = '${s}${i} ';
  }
  print(s);
}

