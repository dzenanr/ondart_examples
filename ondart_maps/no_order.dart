main() {
  var medals = {'gold': 'Usain Bolt',
                'silver': 'Yohan Blake',
                'bronze': 'Justin Gatlin'};
  var allThree = new Map.from(medals);
  assert(medals != allThree);
  print(medals);
  print(allThree);
}

