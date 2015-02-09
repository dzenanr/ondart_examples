
abstract class Persistence {
  save(String doc) {
    print('Saving doc: $doc');
  }
}

abstract class Entities {
  List entityList = new List();
  add(String todo) => entityList.add(todo);
  toDoc() => entityList.toString();
}

class Tasks extends Entities with Persistence {}

main() {
  var tasks = new Tasks();
  tasks.add('prepare Dart course');
  tasks.add('teach Dart course');
  tasks.save(tasks.toDoc());
}