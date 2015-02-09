import 'dart:html';

InputElement input;
LabelElement msg;

void main() {
  input = querySelector('#input')..onInput.listen(repeat);
  msg = querySelector('#msg');
}

void repeat(Event event) {
  msg.text = '${msg.text} ${input.value}';
}

