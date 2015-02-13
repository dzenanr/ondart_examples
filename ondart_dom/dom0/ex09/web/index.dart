import 'dart:html';
import 'dart:convert';

class Notes {
  List noteList;
  InputElement noteInput;
  TableElement noteTable;
  ButtonElement clearNotes;
  ButtonElement loadNotes;
  ButtonElement saveNotes;
  
  Notes() {
    noteList = new List();  
    noteInput = document.querySelector('#note-input');
    noteInput.onChange.listen((e) {
      addRowData(noteInput.value);
      noteInput.select();
    });
    noteTable = document.querySelector('#note-table');
    clearNotes = document.querySelector('#clear-notes');
    clearNotes.onClick.listen((e) {
      noteList.clear();
      noteTable.children.clear();
      noteInput.value = '';
      addTableCaption('Notes');
      addColumnTitles();
    });
    loadNotes = document.querySelector('#load-notes');
    loadNotes.onClick.listen((e) {
      var notes = window.localStorage['notes'];
      jsonToNotes(notes);
    });
    saveNotes = document.querySelector('#save-notes');
    saveNotes.onClick.listen((e) {
      var notes = JSON.encode(notesToList());
      window.localStorage['notes'] = notes;
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
  
  addRowData(String note) {
    noteList.add(note);   
    var noteRow = new Element.tr();   
    var noteCell = new Element.td(); 
    noteCell.text = note;
    noteTable.children.add(noteRow);
    noteRow.children.add(noteCell);
    noteCell.onClick.listen((e) {
      noteInput.value = noteCell.text;
    });
    noteRow.onDoubleClick.listen((e) {
      for (var cell in noteRow.children) {
        noteList.remove(cell.text);
      }
      noteRow.remove();
      noteInput.value = '';
    });
  }
  
  Map noteToMap(String note) {
    var map = new Map();
    map['note'] = note;
    return map;
  }

  String mapToNote(Map map) {
    return map['note'];
  }
  
  List<Map> notesToList() {
    var list = new List<Map>();
    for (var note in noteList) {
      list.add(noteToMap(note));
    }
    return list;
  }

  jsonToNotes(String notes) {
    var list = JSON.decode(notes);
    for (var map in list) {
      var note = mapToNote(map);
      addRowData(note);
    }
  }
}

main() {
  new Notes();
}