part of ondart;

class NoteModel extends ConceptModel {
  static const String note = 'Note';

  Map<String, ConceptEntities> newEntries() {
    var notes = new Notes();
    var map = new Map<String, ConceptEntities>();
    map[note] = notes;
    return map;
  }

  Notes get notes => getEntry(note);
}


