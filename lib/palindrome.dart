import 'dart:io';

void main(){
  print('Enter positive number to check whether it is palindrome or not.');
  int num = int.parse(stdin.readLineSync()!);

  if (isPalindrome(num)){
    print('The number is palindrome.');
  }else {
    print('The number is not palindrome.');
  }
  
}

bool isPalindrome(int num){
  int originalNum = num;
  int reversedNum = 0;

  while(num>0){
    int digit = num%10;
    reversedNum = reversedNum*10+digit;
    num = num ~/10;  // ~ yo integer value matrai linxha
  }
  return originalNum == reversedNum;


}