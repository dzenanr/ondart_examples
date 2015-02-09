import 'dart:html';

bool editable = false;

void main() {
  ButtonElement makeEditButton = querySelector('#make-edit')..onClick.listen(makeEdit);
  ButtonElement showMarkupButton =
      querySelector('#show-markup')..onClick.listen(showMarkup);
  ButtonElement clearMarkupButton =
      querySelector('#clear-markup')..onClick.listen(clearMarkup);
}

void makeEdit(Event event) {
  editable ? editable = false : editable = true;
  editable ?
  document.documentElement.contentEditable = 'true' :
  document.documentElement.contentEditable = 'false';
}

void showMarkup(Event event) {
  String content = document.documentElement.outerHtml;
  document.querySelector('#export-content').innerHtml = content;
}

void clearMarkup(Event event) {
  document.querySelector('#export-content').innerHtml = '';
}

