import 'dart:io';

void main(){
  print("Enter length of rectangle.");
  int len = int.parse(stdin.readLineSync()!);
  print("Enter breadth of rectangle.");
  int bre = int.parse(stdin.readLineSync()!);


  




  if(len == bre){
    print( "The rectangle is Square.");
  } else{
    print("the rectangle is not a square.");
  }


}



