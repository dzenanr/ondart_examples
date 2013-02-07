import 'dart:math';

main() {
  var radius = 8;
  var area = PI * pow(radius, 2);
  try {
    if (area > 200) {
      throw 'I need a cup of tea.';
    }
  } catch (e) {
    print(e);
  }
}

