import 'dart:html';

class Notes {
  InputElement noteInput;
  TableElement noteTable;
  ButtonElement clearNotes;
  
  Notes() {
    noteInput = document.querySelector('#note-input');
    noteInput.onChange.listen((e) {
      addRow(noteInput.value);
      noteInput.select();
    });
    noteTable = document.querySelector('#note-table');
    clearNotes = document.querySelector('#clear-notes');
    clearNotes.onClick.listen((e) {
      noteTable.children.clear();
      noteInput.value = '';
    });    
    //addCaption('Notes');
  }
  
  addCaption(String title) {
    var noteTableCaption = noteTable.createCaption();
    noteTableCaption.text = title;
    noteTable.caption = noteTableCaption;
  }
  
  addRow(String note) {
    var noteRow = new TableRowElement();
    var noteCell = new TableCellElement();
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
}

main() {
  new Notes();
}