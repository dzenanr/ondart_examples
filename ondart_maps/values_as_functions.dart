menu() {
  var items = new Map<String, Function>();
  items['up'] = up;
  items['down'] = down;
  return items;
}

action(String name) {
  var items = menu();
  items[name]();
}

up() {
  print('up');
}

down() {
  print('down');
}

main() {
  action('up');
  action('down');
}


