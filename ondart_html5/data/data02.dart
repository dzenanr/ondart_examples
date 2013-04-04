import 'dart:html';

void main() {
  var node = query("#node");
  var value = node.dataset['used'];
  print(value);
}

