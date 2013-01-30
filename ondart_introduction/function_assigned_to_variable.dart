String prepare(something) {
  return 'Prepare ${something}.';
}

main() {
  var show = prepare;
  print(show('a lecture'));
}

