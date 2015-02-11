import 'dart:html';

class Notes {
  InputElement noteInput;
  TableElement noteTable;
  ButtonElement clearNotes;
  
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
    var row = new Element.tag('tr');   
    noteTable.children.add(row);
    addColumnTitle(row, 'Note');
  }
  
  addColumnTitle(row, String title) {
    var columnHeader = new Element.tag('th');
    columnHeader.text = title; 
    row.children.add(columnHeader);
  }
  
  addRowData(String note) {
    //var noteRow = new TableRowElement();
    var noteRow = new Element.tag('tr');   
    //var noteCell = new TableCellElement();
    var noteCell = new Element.tag('td'); 
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