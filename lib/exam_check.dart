import 'dart:io';

void main(){
  print('Enter the attendence');
  double attendance = double.parse(stdin.readLineSync()!);
  print('Enter the held');
  double held = double.parse(stdin.readLineSync()!);
  print(isAllowedExam(attendance, held));

  //print(isAllowedExam(100, 80));

}
String isAllowedExam(double attendance, double held){
  double percent = (attendance/held)*100;
  if(percent>=75){
    return ' you are alloweded';
  } else{
    return 'you are not allowded';
  }

}