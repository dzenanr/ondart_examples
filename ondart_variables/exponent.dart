main() {
  var exp = 1.42e5;
  print(exp); // 142000.0 in Dart, 142000 in JS
  print(exp is num);
  print(exp is! int);
  print(exp is double);
}

