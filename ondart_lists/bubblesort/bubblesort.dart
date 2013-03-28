List bubblesort(List list) {
  var sortedList = list;
  var n = list.length;
  for (int x = 0; x < n; x++) {
    for (int y = 0; y < n-1; y++) {
      if (sortedList[y] > sortedList[y+1]) {
        int temp = sortedList[y+1];
        sortedList[y+1] = sortedList[y];
        sortedList[y] = temp;
      }
    }
  }
  return sortedList;
}

main() {
  var list = [2, 33, 11, 4, 7, 77, 6, 0];
  // var list = ['yellow', 'blue', 'red', 'green', 'brown', 'orange', 'black'];
  var sortedList = bubblesort(list);
  print(sortedList);
}

