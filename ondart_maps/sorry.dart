main() {
  var medals = {'gold': 'Usain Bolt',
                'silver': 'Yohan Blake',
                'bronze': 'Justin Gatlin'};
  var allThree = new Map.from(medals);
  print(allThree.putIfAbsent('bronze',
      () => 'Dzenan Ridjanovic'));
  print(allThree);
}

