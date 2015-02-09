// adapted from http://chmcguir.wordpress.com/2012/11/09/dart-mergesort/

class MergeSorter {
  int length;
  List list ;
  List _placeholder;

  List sort(List values) {
    this.list = values;
    length = values.length.toInt();
    _placeholder = new List(length);
    _mergesort(0, length-1);
    return list;
  }

  void _mergesort(num low, num high) {
    if(low < high) {
      var middle = (low+high)~/2;
      _mergesort(low,middle);
      _mergesort((middle+1), high);
      _merge(low,middle,high);
    }
  }

  void _merge(num low, num middle, num high) {
    for (int i = low; i <= high; i++){
      _placeholder[i] = list[i];
    }

    num i = low;
    num j = middle + 1;
    num k = low;

    while (i <= middle && j <= high) {
      if (_placeholder[i] <= _placeholder[j]) {
        list[k] = _placeholder[i];
        i ++;
      } else {
        list[k] = _placeholder[j];
        j++;
      }
      k++;
    }

    while (i <= middle) {
      list[k] = _placeholder[i];
      k++;
      i++;
    }
  }
}

void main() {
  var sorter = new MergeSorter();
  var list = [2, 33, 11, 4, 7, 77, 6, 0];
  var list_merge_worst = [77, 33, 11, 7, 6, 4, 2, 0];
  var list_merge_best = [0, 2, 4, 6, 7, 11, 33, 77];
  sorter.sort(list);
  print('merge: ${sorter.list}');
  sorter.sort(list_merge_worst);
  print('merge worst: ${sorter.list}');
  sorter.sort(list_merge_best);
  print('merge best: ${sorter.list}');
}


