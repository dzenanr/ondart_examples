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
  document.querySelector('#description').innerHtml =
      description();
  /*
  document.querySelector('#links').innerHtml =
      links();
  */
  document.querySelector('#links').setInnerHtml(
      links(),
      validator: new NodeValidatorBuilder()
      ..allowHtml5()
      ..allowElement('a', attributes: ['href'])
  );
}
