main() {
  var lot = 100000;
  var nothing = 10;
  while (true) {
    lot = lot / 2;
    print(lot);
    if (lot < nothing) break;
  }
}

