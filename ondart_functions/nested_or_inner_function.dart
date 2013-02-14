String hi(msg, from, to) {
  compose(msg, from, to) => '$msg from $from to $to';

  return 'greeting: ${compose(msg, from, to)}';
} 

main() {
  print(hi('hi', 'me', 'you'));
}

