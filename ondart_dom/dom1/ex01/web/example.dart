import 'dart:html';

main() {
  document.querySelector('#links').innerHtml = '''
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
