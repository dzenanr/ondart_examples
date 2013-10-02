doorify(msg) => '|| ${msg} ||';

starify(msg) => '** ${msg} **';

String hi(msg, from, to, ify) {
  compose(msg, from, to) => '$msg from $from to $to';
  return 'greeting: ${ify(compose(msg, from, to))}';
}

main() {
  print(hi('hi', 'me', 'you', doorify));
}