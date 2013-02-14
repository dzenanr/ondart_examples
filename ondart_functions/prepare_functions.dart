String prepare(something) {
  return 'Prepare $something.';
}

String prepareTogether(something, {together}) {
  if (together == null) return 'Prepare $something.';
  else return 'Prepare $something with $together.';
} 

String prepareForSomeone(something, 
                         [forSomeone='your partner']) {
  return 'Prepare $something for $forSomeone.';
}

main() {
  print(prepare('a meal'));
  print(prepareTogether('a course'));
  print(prepareTogether('a dinner', together:'her'));
  print(prepareTogether('a trip', together:'an agent'));
  print(prepareForSomeone('a weekend'));
}

