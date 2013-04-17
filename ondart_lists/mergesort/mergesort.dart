// adapted from http://chmcguir.wordpress.com/2012/11/09/dart-mergesort/

List sort(List values) {
  List unsorted ;
  List placeholder;

  void mergesort(low, high) {
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

    if(low < high) {
      var middle = ((low+high)/2).toInt();
      mergesort(low,middle);
      mergesort((middle+1), high);
      merge(low,middle,high);
    }
  }

  unsorted = values;
  var length = values.length.toInt();
  placeholder = new List(length);
  mergesort(0, length-1);
  return unsorted;
}

void main(){
  var list = [2, 33, 11, 4, 7, 77, 6, 0];
  var sortedList = sort(list);
  print(sortedList);
}


