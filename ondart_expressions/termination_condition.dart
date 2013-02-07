main() {
  var completed = false;
  var lot = 100000;
  var nothing = 10;
  while (!completed) {
    lot = lot / 2;
    print(lot);
    if (lot < nothing) completed = true;
  }
}

