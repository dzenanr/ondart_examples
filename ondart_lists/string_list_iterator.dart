main() {
  var city = "Sarajevo", s = '';
  for (var ch in city.split('')) {
    s = '${s}${ch} ';
  }
  print(s);
  print(city.split('') is List);
}

