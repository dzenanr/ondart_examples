main() {
  var list = [3, 44, 2, 66, 43];
  list.sort(
      (a, b) {
        if (a == b) { return 0;
        } else if (a > b) { return 1;
        } else { return -1;
        }
      }
  );
  print(list);
}

