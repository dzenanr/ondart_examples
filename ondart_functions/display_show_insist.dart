display(msg) {
  print(msg);
}

main() {
  display('Display');
  var show = display;
  show('Show');
  var insist = (msg) {
    show('$msg!');
  };
  insist('Insist');
}

