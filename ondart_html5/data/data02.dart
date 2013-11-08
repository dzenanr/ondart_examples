import 'dart:html';

void main() {
  var node = querySelector("#node");
  var value = node.dataset['used'];
  print(value);
}

