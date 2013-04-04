import 'dart:html';

InputElement input;
LabelElement msg;

void main() {
  input = query('#quantity')..onInvalid.listen(inform);
  msg = query('#msg');
}

void inform(Event event) {
  msg.text = 'Your value must be a number between 1 and 5: ${input.value}';
}

