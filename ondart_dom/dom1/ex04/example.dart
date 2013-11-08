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

var tableBegin = '''
  <table>
    <caption>Title</caption>
    <tr>
      <th>Column 1</th>
      <th>Column 2</th>
      <th>Column 3</th>
    </tr>
''';

var tableEnd = '''
  </table>
''';

var trBegin = '''
    <tr>
''';

var trEnd = '''
  </tr>
''';

String td(int r, int c) {
  return '''
      <td>($r, $c)</td>
  ''';
}

String table() {
  var rows = '${tableBegin}';
  for (var r = 0; r < 8; r++) {
    rows = '${rows}${trBegin}';
    for (var c = 0; c < 3; c++) {
      rows = '${rows}${td(r, c)}';
    }
    rows = '${rows}${trEnd}';
  }
  rows = '${rows}${tableEnd}';
  print(rows);
  return rows;
}

main() {
  document.querySelector('#description').innerHtml = description();
  document.querySelector('#links').innerHtml = links();
  document.querySelector('#table').innerHtml = table();
}
