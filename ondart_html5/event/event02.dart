import 'dart:html';

void main() {
  query("#myInput").onInput.listen(log);
}

void log(Event event) {
  print('I just changed an input on: ${event.target}');
}

