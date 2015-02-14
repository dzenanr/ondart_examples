part of ondart;

class Note extends ConceptEntity<Note> {
  String _keyword;
  String _note;
  
  String get keyword => _keyword;
  set keyword(String keyword) {
    var oldValue = _keyword;
    _keyword = keyword;
    notifyReactions(Action.UPDATE, this, "keyword", oldValue);
  }
  
  String get note => _note;
  set note(String note) {
    if (code == null) {
      code = note;
    }
    if (code == note) {
      _note = note;
    }
  }

  Note newEntity() => new Note();

  Map<String, Object> toJson() {
    Map<String, Object> entityMap = super.toJson();
    entityMap['keyword'] = keyword;
    entityMap['note'] = note;
    return entityMap;
  }

  fromJson(Map<String, Object> entityMap) {
    super.fromJson(entityMap);
    keyword = entityMap['keyword'];
    note = entityMap['note'];
  }
}

class Notes extends ConceptEntities<Note> {
  Notes newEntities() => new Notes();
  Note newEntity() => new Note();
}