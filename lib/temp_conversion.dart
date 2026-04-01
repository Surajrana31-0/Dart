import 'dart:io';

void main(){
  print('Select 1 or 2');
  int select = int.parse(stdin.readLineSync()!);

  


 

  // print("Choose one conversion :");
  // print("1. Celsius to Fahrenheit");
  // print("2. Fahrenheit to Celsius");
  // print("Enter 1 or 2:");
// }
// void  convertTemp({required double fahrenheit, required double celcious} ){
// or
// with two multiple function
//or with switch (case){}
  if (select == 1){
    print("Enter temperature in Celsius:");
    double celsius = double.parse(stdin.readLineSync()!);
    double fahrenheit = (celsius * 9 / 5) + 32;
    print('$celsius= $fahrenheit');
  }else{
     print("Enter temperature in Fahrenheit:");
  double fahrenheit = double.parse(stdin.readLineSync()!);
    double celsius = (fahrenheit - 32) * 5 / 9;
    print("$fahrenheit = $celsius");
  }
  
}