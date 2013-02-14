Function outer() {
  var inner = () {
    print('anonymous');
  };
  return inner;
}

main() {
  var f = outer();
  f();
}

