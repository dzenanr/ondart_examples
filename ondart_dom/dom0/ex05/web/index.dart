import 'dart:html';

class Notes {
  UListElement noteList;
  InputElement noteInput;
  ButtonElement clearNotes;
  
  Notes() {
    noteList = document.querySelector('#note-list');
    noteInput = document.querySelector('#note-input');
    noteInput.onChange.listen((e) {
      add(noteInput.value);
      noteInput.select();
    });
    clearNotes = document.querySelector('#clear-notes');
    clearNotes.onClick.listen((e) {
      noteList.children.clear();
      noteInput.value = '';
    });
  }
  
  add(String note) {
    var noteItem = new LIElement();
    noteItem.text = note;
    noteList.children.add(noteItem);
    noteItem.onClick.listen((e) {
      noteInput.value = noteItem.text;
    });
    noteItem.onDoubleClick.listen((e) {
      noteItem.remove();
      noteInput.value = '';
    });
  }
}

main() {
  new Notes();
}