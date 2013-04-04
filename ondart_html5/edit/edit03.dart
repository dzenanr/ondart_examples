import 'dart:html';

bool editable = false;

void main() {
  ButtonElement makeEditButton = query('#make-edit')..onClick.listen(makeEdit);
  ButtonElement showMarkupButton =
      query('#show-markup')..onClick.listen(showMarkup);
  ButtonElement clearMarkupButton =
      query('#clear-markup')..onClick.listen(clearMarkup);
}

void makeEdit(Event event) {
  editable ? editable = false : editable = true;
  editable ?
  document.documentElement.contentEditable = 'true' :
  document.documentElement.contentEditable = 'false';
}

void showMarkup(Event event) {
  String content = document.documentElement.outerHtml;
  document.query('#export-content').innerHtml = content;
}

void clearMarkup(Event event) {
  document.query('#export-content').innerHtml = '';
}

