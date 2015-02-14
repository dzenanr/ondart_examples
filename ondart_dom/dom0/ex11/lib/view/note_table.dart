part of ondart;

class NoteTable {
  Notes notes;  
  InputElement keywordInput;
  InputElement noteInput;
  ButtonElement addNote;
  TableElement noteTable;
  ButtonElement clearNotes;
  ButtonElement loadNotes;
  ButtonElement saveNotes;
  
  NoteTable() {
    notes = new NoteModel().notes;
    keywordInput = document.querySelector('#keyword-input');
    noteInput = document.querySelector('#note-input');
    addNote = document.querySelector('#add-note');
    addNote.onClick.listen((e) {
      addRowData(keywordInput.value, noteInput.value);
      noteInput.select();
    });
    noteTable = document.querySelector('#note-table');
    clearNotes = document.querySelector('#clear-notes');
    clearNotes.onClick.listen((e) {
      notes.clear();
      noteTable.children.clear();
      keywordInput.value = '';
      noteInput.value = '';
      addTableCaption('Notes');
      addColumnTitles();
    });
    loadNotes = document.querySelector('#load-notes');
    loadNotes.onClick.listen((e) {
      notes.fromJson(JSON.decode(window.localStorage['notes']));
      notes.forEach((note) => addRowData(note.keyword, note.note));
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
  
  addRowData(String word, String text) {
    var note = new Note();
    note.keyword = word;
    note.note = text;
    notes.add(note); 
    var noteRow = new Element.tr(); 
    var keywordCell = new Element.td(); 
    var noteCell = new Element.td();
    var removeCell = new Element.td();
    keywordCell.style.width = '24%';
    noteCell.style.width = '70%';
    removeCell.style.width = '6%';
    keywordCell.text = note.keyword;
    noteCell.text = note.note;
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
      noteRow.remove();
      keywordInput.value = '';
      noteInput.value = '';
    });
  }
}



