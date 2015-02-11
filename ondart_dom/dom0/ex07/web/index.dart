import 'dart:html';

class Notes {
  InputElement noteInput;
  TableElement noteTable;
  ButtonElement clearNotes;
  ButtonElement loadNotes;
  ButtonElement saveNotes;
  
  Notes() {
    noteInput = document.querySelector('#note-input');
    noteInput.onChange.listen((e) {
      addRowData(noteInput.value);
      noteInput.select();
    });
    noteTable = document.querySelector('#note-table');
    clearNotes = document.querySelector('#clear-notes');
    clearNotes.onClick.listen((e) {
      noteTable.children.clear();
      noteInput.value = '';
      addTableCaption('Notes');
      addColumnTitles();
    });
    loadNotes = document.querySelector('#load-notes');
    loadNotes.onClick.listen((e) {
      var noteList = toTableNotes();
      for (var note in noteList) {
        addRowData(note);
      }
    });
    saveNotes = document.querySelector('#save-notes');
    saveNotes.onClick.listen((e) {
      window.localStorage['notes'] = fromTableNotes();
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
    //var row = new TableRowElement();
    var row = new Element.tr();   
    noteTable.children.add(row);
    addColumnTitle(row, 'Note');
  }
  
  addColumnTitle(row, String title) {
    //var columnHeader = new ?();
    var columnHeader = new Element.th();
    columnHeader.text = title; 
    row.children.add(columnHeader);
  }
  
  addRowData(String note) {
    //var noteRow = new TableRowElement();
    var noteRow = new Element.tr();   
    //var noteCell = new TableCellElement();
    var noteCell = new Element.td(); 
    noteCell.text = note;
    noteTable.children.add(noteRow);
    noteRow.children.add(noteCell);
    noteCell.onClick.listen((e) {
      noteInput.value = noteCell.text;
    });
    noteRow.onDoubleClick.listen((e) {
      noteRow.remove();
      noteInput.value = '';
    });
  }
  
  List toTableNotes() {
    var noteList = new List();
    String notes = window.localStorage['notes'];
    if (notes != null) {
      noteList = notes.split(' ');
    }
    return noteList;
  }
  
  String fromTableNotes() {
    var notes = '';
    var r = 0;
    for (var row in noteTable.children) {
      if (row is TableRowElement && r++ > 0) {
        for (var cell in row.children) {
          //if (cell is TableCellElement) {
            notes = '${notes}${cell.text} ';
          //}
        }
      }
    }
    return notes.trim();
  }
}

main() {
  new Notes();
}