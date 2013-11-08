import 'dart:html';

DivElement div;

void main() {
  div = querySelector('#editable')..onBlur.listen(save);
  String userContent = window.localStorage['user-content'];
  if (userContent != null) {
    div.innerHtml = userContent;
  }
}

void save(Event event) {
  window.localStorage['user-content'] = div.innerHtml;
}

