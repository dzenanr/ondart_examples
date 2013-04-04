import 'dart:html';

InputElement input;
LabelElement msg;

void main() {
  input = query('#quantity')..
      onInvalid.listen((event) {msg.text =
      'Number between 1 and 5: ${input.value}';});
  msg = query('#msg');
}

/*
void inform(Event event) {
  msg.text = 'Number between 1 and 5: ${input.value}';
}
*/

