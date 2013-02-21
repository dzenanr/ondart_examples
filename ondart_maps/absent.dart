main() {
  var medals = {'gold': 'Usain Bolt',
                'silver': 'Yohan Blake'};
  medals.putIfAbsent('bronze', () => 'Justin Gatlin');
  assert(medals.containsKey('bronze'));
  assert(medals.containsValue('Justin Gatlin'));
  print(medals);
}

