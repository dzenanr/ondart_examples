part of ondart;

class NoteTable {
  Notes notes;  
  InputElement noteInput;
  TableElement noteTable;
  ButtonElement clearNotes;
  ButtonElement loadNotes;
  ButtonElement saveNotes;
  
  NoteTable() {
    notes = new NoteModel().notes;    
    noteInput = document.querySelector('#note-input');
    noteInput.onChange.listen((e) {
      addRowData(noteInput.value);
      noteInput.select();
    });
    noteTable = document.querySelector('#note-table');
    clearNotes = document.querySelector('#clear-notes');
    clearNotes.onClick.listen((e) {
      notes.clear();
      noteTable.children.clear();
      noteInput.value = '';
      addTableCaption('Notes');
      addColumnTitles();
    });
    loadNotes = document.querySelector('#load-notes');
    loadNotes.onClick.listen((e) {
      notes.fromJson(JSON.decode(window.localStorage['notes']));
      notes.forEach((note) => addRowData(note.note));
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
    addColumnTitle(row, 'Note');
  }
  
  addColumnTitle(row, String title) {
    var columnHeader = new Element.th();
    columnHeader.text = title; 
    row.children.add(columnHeader);
  }
  
  addRowData(String text) {
    var note = new Note();
    note.note = text;
    notes.add(note); 
    var noteRow = new Element.tr();   
    var noteCell = new Element.td(); 
    noteCell.text = note.note;
    noteTable.children.add(noteRow);
    noteRow.children.add(noteCell);
    noteCell.onClick.listen((e) {
      noteInput.value = noteCell.text;
    });
    noteRow.onDoubleClick.listen((e) {
      for (var cell in noteRow.children) {      
        notes.remove(notes.find(cell.text));
      }
      noteRow.remove();
      noteInput.value = '';
    });
  }
}



