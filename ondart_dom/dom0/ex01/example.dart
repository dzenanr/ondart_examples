import 'dart:html';

main() {
  Element section = document.querySelector('#notes');
  LabelElement total = document.querySelector('#notes-total');

  DivElement note = new Element.tag('div');
  note.id = 'note';
  note.innerHtml = '<p>New note.</p>';
  section.children.add(note);
  String notesCount = total.text;
  int count = int.parse(notesCount);
  count++;
  total.text = count.toString();

  print('section elements');
  print('================');
  for (Element e in section.children) {
    print('id: ${e.id}');
    print('inner html: ${e.innerHtml}');
    print('outer html: ${e.outerHtml}');
    print('');
  }
}

