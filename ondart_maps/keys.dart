void main() {
  var stock = {'apples': 430, 'bananas': 312,
               'oranges' : 274, 'kiwis' : 137};
  print(stock);
  var keys = stock.keys;
  assert(keys.length == 4);
  print(keys.toList());
}

