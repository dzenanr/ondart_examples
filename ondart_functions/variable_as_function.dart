doorify(msg) => '|| ${msg} ||';

String hi(msg, from, to, ify) {
  compose(msg, from, to) => '$msg from $from to $to';
  var greeting = ify(compose(msg, from, to));
  return 'greeting: ${greeting}';
} 

main() {
  print(hi('hi', 'me', 'you', doorify));
}

