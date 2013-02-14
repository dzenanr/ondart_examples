Function greeting() {
  hello() => 'Hello';
  return hello;
}

main() {
  Function f = greeting();
  print(f());
}

