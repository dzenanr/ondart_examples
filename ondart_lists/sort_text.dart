main() {
  var list = ['Montréal', 'Hamburg', 'Rome', 'Belgrade', 'Québec'];
  list.sort(
      (a, b) {
        return a.compareTo(b);
      }
  );
  print(list);
}

