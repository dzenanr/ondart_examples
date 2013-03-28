import 'package:unittest/unittest.dart';

// from http://chmcguir.wordpress.com/2012/11/09/dart-mergesort/

class Sorting {
  var unsorted ;
  List placeholder;

  var length;

  List sort(List values) {
    this.unsorted = values;
    length = values.length.toInt();
    placeholder = new List(length);
    mergeSort(0, length-1);
    return unsorted;
  }

  void mergeSort(low,high) {
    if(low < high) {
      var middle = ((low+high)/2).toInt();
      mergeSort(low,middle);
      mergeSort((middle+1), high);
      merge(low,middle,high);
    }
  }

  void merge(int low, int middle, int high) {
    for (int i = low; i <= high; i++){
      placeholder[i] = unsorted[i];
    }

    int i = low;
    int j = middle+1;
    int k = low;

    while (i <= middle && j <= high) {
      if (placeholder[i] <= placeholder[j]) {
        unsorted[k] = placeholder[i];
        i ++;
      } else {
        unsorted[k] = placeholder[j];
        j++;
      }
      k++;
    }

    while (i <= middle) {
      unsorted[k] = placeholder[i];
      k++;
      i++;
    }
  }
}

void main(){
  Sorting sorter = new Sorting();
  test('Merge_Worst', () =>
      expect(sorter.sort([5,4,3,2,1]), orderedEquals([1,2,3,4,5])));
  test('Merge_Best', () =>
      expect(sorter.sort([1,2,3,4,5]), orderedEquals([1,2,3,4,5])));
}

