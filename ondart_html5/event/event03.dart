import 'dart:html';

InputElement input;
LabelElement msg;

void main() {
  input = query('#input')..onInput.listen(repeat);
  msg = query('#msg');
}

void repeat(Event event) {
  msg.text = '${msg.text} ${input.value}';
}

