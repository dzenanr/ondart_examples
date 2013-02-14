Function outer() {
  var available = 'closure';
  return () {
    print(available);
  };
}

main() {
  var f = outer();
  f();  // try without this line
}

