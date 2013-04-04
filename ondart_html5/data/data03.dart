import 'dart:html';

void main() {
  var description = query("#description");
  var list = query("#list");
  list.onClick.listen((e) {description.text = e.target.dataset['description'];});
}

