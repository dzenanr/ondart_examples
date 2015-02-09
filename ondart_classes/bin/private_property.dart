
class Project {
  String _name;
  String description;

  String get name => _name;
  set name(String name) {
    _name = name;
    description = 'The ${name} project description: ';
  }
}

main() {
  var dartlero = new Project();
  dartlero.name = 'dartlero';
  print(dartlero.description);
}
