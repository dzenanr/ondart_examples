import 'dart:html';

main() {
  document.query('#links').innerHtml = '''
    <ul>
      <li>
        <a href="http://www.dartlang.org/">Dart</a>
      </li>
      <li>
        <a href="http://www.mongodb.org/">MongoDB</a>
      </li>
    </ul>
''';
}
