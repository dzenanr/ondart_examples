import 'dart:html';

void main() {
  query("#input").onInput.listen(log);
}

void log(Event event) {
  print('Input change on: ${event.target}');
}

