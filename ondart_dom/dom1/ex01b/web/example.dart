import 'dart:html';

main() {
  /*
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
*/
  var links = '''
    <ul>
      <li>
        <a href="http://www.dartlang.org/">Dart</a>
      </li>
      <li>
        <a href="http://www.mongodb.org/">MongoDB</a>
      </li>
    </ul>
''';
  querySelector('#links').setInnerHtml(
      links,
      validator: new NodeValidatorBuilder()
      ..allowHtml5()
      ..allowElement('a', attributes: ['href'])
  );
}
