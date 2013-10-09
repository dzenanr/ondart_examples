Map<String, int> letterFrequency(String text) {
  // String textWoutSpaces = text.replaceAll('\n', '').replaceAll(' ', '').replaceAll('.', '');
  // \w : word characters (letters, digits, and underscores)
  // \W : negation of \w
  print(text);
  String textWoutSpaces =
      text.replaceAll(new RegExp(r'\W+'), '');
  print(textWoutSpaces);
  List charList = textWoutSpaces.split('');
  print(charList);
  charList.sort((m,n) => m.compareTo(n));
  var charMap = {};
  for (var char in charList) {
    charMap[char] = charMap.putIfAbsent(char, () => 0) + 1;
  }
  return charMap;
}

void main() {
  var text = '''
A warning does not halt execution.
It tells you a potential problem has been detected.
The program will still be compiled and executed!
''';
  print(letterFrequency(text));
}

