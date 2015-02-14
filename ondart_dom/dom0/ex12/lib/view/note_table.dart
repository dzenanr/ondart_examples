part of ondart;

class NoteTable {
  Notes notes; 
  Reaction react;
  InputElement keywordInput;
  InputElement noteInput;
  ButtonElement addNote;
  TableElement noteTable;
  ButtonElement clearNotes;
  ButtonElement loadNotes;
  ButtonElement saveNotes;
  
  NoteTable() {
    notes = new NoteModel().notes;
    react = (Action action, [Note note, String propertyName, Object oldValue]) {
      switch (action) {
        case Action.ADD:
          addRowData(note.keyword, note.note);
          noteInput.select();
          return true;
        case Action.CLEAR:
          noteTable.children.clear();
          keywordInput.value = '';
          noteInput.value = '';
          addTableCaption('Notes');
          addColumnTitles();
          return true;
        case Action.REMOVE: 
          var row = findRow(note.note);
          row.remove();
          keywordInput.value = '';
          noteInput.value = '';
          return true;
        case Action.UPDATE:
          var row = findRow(note.note);
          if (propertyName == "keyword") {
            row.children[0].text = note.keyword;
            return true;
          }
        return false;
      }
    };
    notes.startReaction(react);
    keywordInput = document.querySelector('#keyword-input');
    keywordInput.onChange.listen((e) {
      var value = noteInput.value;
      var note = notes.find(value);
      if (note != null) {
        note.keyword = keywordInput.value;
      }
    });
    noteInput = document.querySelector('#note-input');
    addNote = document.querySelector('#add-note');
    addNote.onClick.listen((e) {
      var note = new Note();
      note.keyword = keywordInput.value;
      note.note = noteInput.value;
      note.startReaction(react);
      notes.add(note);
    });
    noteTable = document.querySelector('#note-table');
    clearNotes = document.querySelector('#clear-notes');
    clearNotes.onClick.listen((e) {
      notes.clear();
    });
    loadNotes = document.querySelector('#load-notes');
    loadNotes.onClick.listen((e) {
      if (notes.isEmpty) {
        notes.fromJson(JSON.decode(window.localStorage['notes']));
        notes.forEach((note) => note.startReaction(react));
      }
    });
    saveNotes = document.querySelector('#save-notes');
    saveNotes.onClick.listen((e) {
      window.localStorage['notes'] = JSON.encode(notes.toJson());
    });
    addTableCaption('Notes');
    addColumnTitles();
  }
  
  addTableCaption(String title) {
    var noteTableCaption = noteTable.createCaption();
    noteTableCaption.text = title;
    noteTable.caption = noteTableCaption;
  }
  
  addColumnTitles() {
    var row = new Element.tr();   
    noteTable.children.add(row);
    addColumnTitle(row, 'Keyword', 24);
    addColumnTitle(row, 'Note', 70);
    addColumnTitle(row, 'Remove', 6);
  }
  
  addColumnTitle(row, String title, num width) {
    var columnHeader = new Element.th();
    columnHeader.text = title; 
    columnHeader.style.width = '${width}%';
    row.children.add(columnHeader);
  }
  
  addRowData(String keyword, String note) { 
    var noteRow = new Element.tr(); 
    var keywordCell = new Element.td(); 
    var noteCell = new Element.td();
    var removeCell = new Element.td();
    keywordCell.style.width = '24%';
    noteCell.style.width = '70%';
    removeCell.style.width = '6%';
    keywordCell.text = keyword;
    noteCell.text = note;
    removeCell.text = 'X';
    noteTable.children.add(noteRow);
    noteRow.children.add(keywordCell);
    noteRow.children.add(noteCell);
    noteRow.children.add(removeCell);
    noteCell.onClick.listen((e) {
      keywordInput.value = keywordCell.text;
      noteInput.value = noteCell.text;
    });
    removeCell.onClick.listen((e) {    
      notes.remove(notes.find(noteCell.text));
    });
  }
  
  TableRowElement findRow(String note) {
    var r = 0;
    for (var row in noteTable.children) {
      if (row is TableRowElement && r++ > 0) {
        if (row.children[1].text == note) {
          return row;
        }
      }
    }
    return null;
  }
}



