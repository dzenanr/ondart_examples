main() {
  var medals = {'gold': 'Usain Bolt',
                'silver': 'Yohan Blake',
                'bronze': 'Justin Gatlin'};
  print(medals.remove('bronze'));
  assert(!medals.containsKey('bronze'));
  print(medals['bronze']);
  assert(medals.remove('bronze') == null);
}

