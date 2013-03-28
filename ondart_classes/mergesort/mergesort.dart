import 'package:unittest/unittest.dart';

// adapted from http://chmcguir.wordpress.com/2012/11/09/dart-mergesort/

class MergeSorter {
  int length;
  List unsorted ;
  List _placeholder;

  List sort(List values) {
    this.unsorted = values;
    length = values.length.toInt();
    _placeholder = new List(length);
    _mergeSort(0, length-1);
    return unsorted;
  }

  void _mergeSort(num low, num high) {
    if(low < high) {
      var middle = ((low+high)/2).toInt();
      _mergeSort(low,middle);
      _mergeSort((middle+1), high);
      _merge(low,middle,high);
    }
  }

  void _merge(num low, num middle, num high) {
    for (int i = low; i <= high; i++){
      _placeholder[i] = unsorted[i];
    }

    num i = low;
    num j = middle + 1;
    num k = low;

    while (i <= middle && j <= high) {
      if (_placeholder[i] <= _placeholder[j]) {
        unsorted[k] = _placeholder[i];
        i ++;
      } else {
        unsorted[k] = _placeholder[j];
        j++;
      }
      k++;
    }

    while (i <= middle) {
      unsorted[k] = _placeholder[i];
      k++;
      i++;
    }
  }
}

void main() {
  var sorter = new MergeSorter();
  test('Merge_Worst', () =>
      expect(sorter.sort([5,4,3,2,1]), orderedEquals([1,2,3,4,5])));
  test('Merge_Best', () =>
      expect(sorter.sort([1,2,3,4,5]), orderedEquals([1,2,3,4,5])));
}


