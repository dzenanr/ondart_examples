void main() {
  var stock = {'apples': 430, 'bananas': 137,
               'oranges' : 274, 'kiwis' : 137};
  print(stock);
  var values = stock.values;
  assert(values.length == 4);
  print(values.toList());
}

