import 'dart:io';

void main(){
  print('Enter the ');
  int year = int.parse(stdin.readLineSync()!);

  if (isLeapYear(year)){
    print('$year is leap year.');
  } else {
    print('$year is not a leap year.');
  }
} 


bool isLeapYear(int year){
  if (year % 4 == 0){
    if (year %100 ==0){
      if(year %400 ==0){
        return true;
      }else{
        return false;
      }
    } else {
      return true;
    }
  } else {
    return false;
  }
}