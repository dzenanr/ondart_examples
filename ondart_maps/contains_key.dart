main() {
  var medals = {'gold': null,
                'silver': null,
                'bronze': null};
  assert(medals.containsKey('bronze'));
  if (medals['bronze'] == null) {
    print('no bronze');
  }
}

