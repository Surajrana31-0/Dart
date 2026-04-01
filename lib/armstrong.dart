

import 'dart:math';

void main (){
  print(isArmstrongNum(12));

  

}

String isArmstrongNum(int num1){
  String change = num1.toString();
  int sum = 0;
  int numDigit=change.length;


  for (int i=0;i<change.length; i++){
    int digit =int.parse(change[i]);
    sum +=pow(digit, numDigit).toInt();
  
    }
    if (sum==num1){
      return'the number is armstrong : $sum ';
    } else {
      return 'the number is not armstrong :$sum';
    }
}