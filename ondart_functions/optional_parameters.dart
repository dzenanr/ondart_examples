String hi(String msg, [String from, String to]) =>
    '$msg from $from to $to';

main() {
  print(hi('hi'));
  print(hi('hi', 'me'));
  print(hi('hi', 'me', 'you'));
}

