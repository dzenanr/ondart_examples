String hi(String msg, {String from:'me', String to:'you'}) => 
    '$msg from $from to $to';

main() {
  print(hi('hi'));
  print(hi('hi', to:'her'));
  print(hi('hi',  to:'him', from:'you'));
}

