void main() {
  var stock = {'apples': 430, 'bananas': 137,
               'oranges' : 274, 'kiwis' : 137};
  for (var fruit in stock) {
    print(fruit);
  }
}

