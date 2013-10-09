import 'dart:html';

void main() {
  var description = query("#description");
  var list = query("#list");
  list.onClick.listen((e) {
    Element item = e.target;
    description.text =
      item.dataset['description'];
  });
}

