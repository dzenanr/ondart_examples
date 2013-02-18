main() {
  var city = "Sarajevo", s = '';
  for (var ch in city) {
    s = '${s}${city[ch]} ';
  }
  print(s);
}

