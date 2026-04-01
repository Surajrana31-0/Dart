import 'dart:io';

void main(){
  print('Enter any number');
  int num1 = int.parse(stdin.readLineSync()!);


  int revNum= reverse(num1);
  print('Entered: $num1');
  print('Rev:$revNum');

}

int reverse(int num1){
  int rev = 0;

 

  while (num1>0) {
    int digit = num1 %10;
    rev = rev*10+digit;
    num1=num1~/10;

    
  }
  
  return rev;
}
