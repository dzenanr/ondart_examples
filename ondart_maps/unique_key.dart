main() {
  var medals = {'gold': 'Usain Bolt',
                'silver': 'Yohan Blake'};
  medals['bronze'] = 'Justin Gatlin';
  assert(medals.containsKey('bronze'));
  print(medals['bronze']);
  medals['bronze'] = 'Justin Gatlin';
  print(medals);
}

