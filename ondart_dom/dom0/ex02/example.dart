import 'dart:html';

class Notes {
  Element section;
  LabelElement total;
  int noteCount = 0;

  Notes() {
    section = document.query('#notes');
    total = document.query('#notes-total');
  }

  createNote() {
    DivElement note = new Element.tag('div');
    noteCount++;
    note.id = 'note${noteCount}';
    note.innerHtml = 'Note ${noteCount}.';
    section.children.add(note);

    var notesCount = total.text;
    var count = int.parse(notesCount);
    count++;
    total.text = count.toString();
  }
}

main() {
  var notes = new Notes();

  for (var i = 0; i < 10; i++) {
    notes.createNote();
  }

  print('notes section elements');
  print('======================');
  for (Element e in notes.section.children) {
    print('element id: ${e.id}');
    print('element inner html: ${e.innerHtml}');
    print('element outer html: ${e.outerHtml}');
    print('----------------------');
  }
}

