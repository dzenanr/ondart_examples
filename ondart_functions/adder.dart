Function adder(num n) {
  return (num i) => n + i;
}

main() {
  var two = 2;
  var add2 = adder(two);
  var three = 3;
  var r = add2(three);
  assert(two + three == r);
  print('2 + 3 = $r'); // 5
}

