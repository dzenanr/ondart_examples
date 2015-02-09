import 'dart:math';

// http://www.mathopenref.com/square.html
class Square {
  num length;

  /*
  Square(length) {
    this.length = length;
  }
  */

  Square(this.length);

  bool greaterThan(Square other) =>
      length > other.length ? true : false;

  /*
  bool greaterThan(Square other) {
    if (length > other.length) {
      return true;
    } else {
      return false;
    }
  }
  */

  num get perimeter => 4 * length;
  num get area => length * length;
  num get diagonal => length * SQRT2;

  void display(label) {
    print('');
    print('length of $label is $length');
    print('perimeter of $label is $perimeter');
    print('area of $label is $area');
    print('diagonal of $label is $diagonal');
  }
}

main() {
  var s1 = new Square(2);
  var s2 = new Square(15);
  if (s1.greaterThan(s2)) {
    print('s1 greater than s2');
  } else {
    print('s1 is not greater than s2');
  }
  s1.display('square 1');
  s1.length = 4;
  s1.display('square 1 after update');
  s2.display('square 2');

  print('\nperimeter of s1: ${s1.perimeter}');

  //s1.perimeter = 32;
}
