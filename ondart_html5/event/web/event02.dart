import 'dart:html';

void main() {
  querySelector("#input").onInput.listen(log);
}

void log(Event event) {
  print('Input change on: ${event.target}');
}

