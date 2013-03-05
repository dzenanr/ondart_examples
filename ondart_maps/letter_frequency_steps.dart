// http://www.regular-expressions.info/reference.html

Map<String, int> letterFrequencySteps(String text) {
  print(text);
  String textWoutSpaces = text.replaceAll(new RegExp(r'\W+'), '');
  print(textWoutSpaces);
  List charList = textWoutSpaces.split('');
  print(charList);
  var lowCharList = new List();
  for (var char in charList) {
    lowCharList.add(char.toLowerCase());
  }
  print(lowCharList);
  lowCharList.sort((m,n) => m.compareTo(n));
  print(lowCharList);
  var charMap = {};
  for (var char in lowCharList) {
    charMap[char] = charMap.putIfAbsent(char, () => 0) + 1;
    //print('${char}: ${charMap[char]}');
  }
  return charMap;
}

void main() {
  var text = '''
A warning does not halt execution.
It tells you a potential problem has been detected.
The program will still be compiled and executed!
''';
  print(letterFrequencySteps(text));
}


