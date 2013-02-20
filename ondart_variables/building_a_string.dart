main() {
  var sb = new StringBuffer("1 balloon \n");
  for (var i = 2; i < 10; i++) {
    sb.write(i.toString());
    sb.write(" balloons \n");
  }
  print(sb.toString());
}

