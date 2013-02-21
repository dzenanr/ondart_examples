main() {
  var medals = {'gold': 'Usain Bolt',
                'silver': 'Yohan Blake',
                'bronze': 'Justin Gatlin'};
  medals.remove('bronze');
  assert(!medals.containsKey('bronze'));
  print(medals['bronze']);
  print(medals.length);
  print(medals);
}

