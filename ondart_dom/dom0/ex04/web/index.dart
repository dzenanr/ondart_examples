import 'dart:html';

// http://www.quirksmode.org/dom/intro.html
// http://www.cprenterprisesonline.com/elearning/htmldom/default.asp.htm
// http://www.cprenterprisesonline.com/elearning/htmldom/dom_examples.asp.htm

// https://dom-tutorials.appspot.com/static/index.html
// http://javascript.info/tutorial/basic-dom-node-properties

// https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model
// https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Examples

// https://www.dartlang.org/docs/tutorials/connect-dart-html/
// https://www.dartlang.org/docs/tutorials/add-elements/
// https://www.dartlang.org/docs/tutorials/remove-elements/

class Notes {
  UListElement noteList;
  InputElement noteInput;

  Notes() {
    noteList = document.querySelector('#note-list');
    noteInput = document.querySelector('#note-input');
    noteInput.onChange.listen((Event e) {
      add(noteInput.value);
      noteInput.select();
    });
  }
  
  add(String note) {
    var noteItem = new LIElement();
    noteItem.text = note;
    noteList.children.add(noteItem);
    displayHtml();
  }
  
  displayHtml() {
    print(noteList.outerHtml);
  }
}

main() {
  new Notes();
}


