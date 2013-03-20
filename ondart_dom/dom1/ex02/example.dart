import 'dart:html';

String description() {
  return '''
    <p>
      The following links are learning resources.
    </p>
  ''';
}

String links() {
  return '''
    <ul class="link">
      <li>
        <a href="http://www.dartlang.org/">Dart</a>
      </li>
      <li>
        <a href="http://www.mongodb.org/">MongoDB</a>
      </li>
    </ul>
  ''';
}

main() {
  document.query('#description').innerHtml =
      description();
  document.query('#links').innerHtml =
      links();
}
