main() {
  var medals = {'gold': 'Usain Bolt',
                'silver': 'Yohan Blake',
                'bronze': 'Justin Gatlin'};
  medals.clear();
  assert(medals.length == 0);
  assert(medals.isEmpty);
}

