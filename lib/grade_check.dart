import 'dart:io';

void main(){
  print("enter you marks?");
  int marks = int.parse(stdin.readLineSync()!);


  print(checkMarks(marks));

  // String result = checkMarks(marks);
  // print(result);
}

String checkMarks(int marks){
  if (marks<25){
    return'You re fail.';
  }else if(marks<45 && marks >25){
    return 'you got grade E';
  } else if(marks <50 && marks> 45){
    return 'you got grade D';
  } else if(marks<60 && marks >50){
    return 'yoou got grade C';
  } else if(marks<80 && marks >60){
    return 'you got grade B';
  }else{
    return 'you got grade A';
  }
}