import 'dart:io';

void main(){
  print('Enter positive integer you want a tanle.');
  int numb = int.parse(stdin.readLineSync()!);

  // if (numb == null || numb <= 0) {
  //   print('Please enter a valid positive integer.');
  //   return;
  // }

  for (int i = 1; i <= 10; i++) {
    int result = numb * i;
    print('$numb x $i = $result');
  }
}