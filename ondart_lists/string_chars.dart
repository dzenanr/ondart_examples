main() {
  var city = "Sarajevo", s = '';
  for (var ch = 0; ch < city.length; ch++) {
    s = '${s}${city[ch]} ';
  }
  print(s);
}

