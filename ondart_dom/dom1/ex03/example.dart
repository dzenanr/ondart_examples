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
        <a href="http://www.dartlang.org/">
          Dart
        </a>
      </li>
      <li>
        <a href="http://www.mongodb.org/">
          MongoDB
        </a>
      </li>
    </ul>
  ''';
}

String table() {
  return '''
    <table>
      <caption>Table Title</caption>
      <tr>
        <th>Column 1 Title</th>
        <th>Column 2 Title</th>
        <th>Column 3 Title</th>
      </tr>
      <tr>
        <td>Cell 1, 1</td>
        <td>Cell 1, 2</td>
        <td>Cell 1, 3</td>
      </tr>
      <tr>
        <td>Cell 2, 1</td>
        <td>Cell 2, 2</td>
        <td>Cell 2, 3</td>
      </tr>
    </table>
  ''';
}

main() {
  document.querySelector('#description').innerHtml =
      description();
  document.querySelector('#links').setInnerHtml(
      links(),
      validator: new NodeValidatorBuilder()
      ..allowHtml5()
      ..allowElement('a', attributes: ['href'])
  );
  document.querySelector('#table').innerHtml =
      table();
}
