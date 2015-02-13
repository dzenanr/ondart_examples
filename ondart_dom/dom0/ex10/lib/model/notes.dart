part of ondart;

class Note extends ConceptEntity<Note> {
  String _note;
  
  String get note => _note;
  set note(String note) {
    _note = note;
    if (code == null) {
      code = note;
    }
  }

  Note newEntity() => new Note();

  Map<String, Object> toJson() {
    Map<String, Object> entityMap = super.toJson();
    entityMap['note'] = note;
    return entityMap;
  }

  fromJson(Map<String, Object> entityMap) {
    super.fromJson(entityMap);
    note = entityMap['note'];
  }
}

class Notes extends ConceptEntities<Note> {
  Notes newEntities() => new Notes();
  Note newEntity() => new Note();
}