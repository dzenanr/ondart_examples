Map partition(List list) {
  var map = new Map();
  if (list.length > 1) {
    var pivot = list[0];
    var sublist = list.sublist(1);
    var low = new List(), high = new List();
    sublist.forEach((e) => e <= pivot ? low.add(e) : high.add(e));
    map['pivot'] = pivot;
    map['low'] = low;
    map['high'] = high;
  }
  return map;
}

List quicksort(List list) {
  Map map = partition(list);
  if (map.isEmpty) {
    return list;
  } else {
    var low = quicksort(map['low']);
    var high = quicksort(map['high']);
    var quickstep = low;
    quickstep.add(map['pivot']);
    quickstep.addAll(high);
    return quickstep;
  }
}

main() {
  var list = [2, 33, 11, 4, 7, 77, 6, 0];
  var sortedList = quicksort(list);
  print(sortedList);
}

