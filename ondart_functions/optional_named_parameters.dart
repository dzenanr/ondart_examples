String hi(String msg, {String from, String to}) =>
    '$msg from $from to $to';

main() {
  print(hi('hi'));
  print(hi('hi', to:'you'));
  print(hi('hi', to:'you', from:'me'));
}

