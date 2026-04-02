import 'dart:io';

void main(){
  print('Enter the list of integer.');
  int total = int.parse(stdin.readLineSync()!);
  


  List<int> number=[];
  for(int i=0;i<total;i++){  //number.length  
    print('Enter the number ${i+1}.');
    int? num = int.parse(stdin.readLineSync()!);

    // if(num == null ){
    //   print('Enter the valid integer.');
    //   i--;
    //   continue;
    // }
    number.add(num);

  }

  if (number.isEmpty){
    print('Valid numbers or integer are not entered.');
    return;
  }
  int largest = number[0];
  int smallest = number[0];
  int sum = 0;

  for(int num in number){
    if(num>largest) largest = num;
    if(num<smallest)smallest = num;
    sum=sum+num;
  }
  double average = sum/number.length;

  print('The largest number is: $largest');
  print('The smallest number is: $smallest');
  print('the average of the number is:${average.toStringAsFixed(3)}');

}