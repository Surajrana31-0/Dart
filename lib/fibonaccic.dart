import 'dart:io';

void main(){
  print('enter the total numbers required in seriies');
  int fibo = int.parse( stdin.readLineSync()!);


  int first=0;
  int second=1;
  // int third=first+second;

  print('fibonaccic of nth term is $fibo');
    for(int i= 0; i<fibo;i++){
      print(first);
      int third=first +second;
      first=second;
      second=third;
    }  
}