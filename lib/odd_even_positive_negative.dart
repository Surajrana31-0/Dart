import 'dart:io';

void main(){
  print('Enter the number.');
  int num =int.parse(stdin.readLineSync()!);

  if (num<0 && num % 2 ==0){
    print('the number is negative and even');

  } else if (num < 0 && num % 2 != 0) {
    print('The number is negative and odd');
  }else if(num>0 && num %2==0){
    print('the number is positive and even');

  }else if (num > 0 && num % 2 != 0) {
    print('The number is positive and odd');
  }else{
    print('the number is zero');
  }



  //or 
  // if(num==0){
  //   print('the number is zero');

  // }else if(num<0){
  //   if(num%2==0){
  //     print('the number is negative and even')
  //   }else if(num%2!=0){
  //     print('the number is negative and odd');
  //   }
  // }
}



