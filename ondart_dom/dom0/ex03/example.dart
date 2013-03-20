import 'dart:html';

class Notes {
  LabelElement total = document.query('#notes-total');
  Element section = document.query('#created-notes');
  int noteCount;

  Notes(this.noteCount) {
    var notes = noteList(prepareNotes(noteCount));
    section.innerHtml = notes;
    total.text = noteCount.toString();
  }

  DivElement createNote(int sequence) {
    var note = new Element.tag('div');
    note.id = 'note${sequence}';
    note.innerHtml = 'Note ${sequence}.';
    return note;
  }

  List prepareNotes(int count) {
    var notes = new List();
    for (var i = 0; i < count; i++) {
      notes.add(createNote(i));
    }
    return notes;
  }

  String noteList(List noteList) {
    var ns = '';
    ns = ''' 
      ${ns}<ul class="target">
    ''';
    for (var note in noteList) {
      ns = '''
        ${ns}
        <li>
          ${note.outerHtml}
        </li>
      ''';
    }
    ns = '''
      ${ns}
      </ul>
    ''';
    return ns;
  }
}

main() {
  var notes = new Notes(10);
  print('Notes Section');
  print('=============');
  print(notes.section.outerHtml);
}


