import 'dart:html';

void main() {
  var description = querySelector("#description");
  var list = querySelector("#list");
  list.onClick.listen((e) {
    Element item = e.target;
    description.text =
      item.dataset['description'];
  });
}

