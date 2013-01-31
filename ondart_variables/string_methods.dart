main() {
  var s1 = 'Use triple quote with single or double quote.';
  if (s1.startsWith('Use') && s1.endsWith('quote.')) {
    if (s1.contains(new RegExp('triple quote'))) {
      print(s1);
    }
  }
}

