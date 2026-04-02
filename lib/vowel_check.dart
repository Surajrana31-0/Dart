import 'dart:io';

void main(){

  print('enter the string.');
  String? strin = stdin.readLineSync()!;


  int voCount=0;
  int consCOunt=0;
  int specialCharacter=0;
  int digitCount=0;

  String vowels = 'aeiouAEIOU';
  for (int i=0; i<strin.length;i++){
    String char = strin[i];
    if (vowels.contains(char)){
      voCount++;
    }else if(char.codeUnitAt(0)>=48 && char.codeUnitAt(0)<=57){
      digitCount++;
    }else if((char.codeUnitAt(0)>=65 && char.codeUnitAt(0)<=90)  || (char.codeUnitAt(0)>=97 && char.codeUnitAt(0)<=122)){
      consCOunt++;
    }else {
      specialCharacter++;
    }
  }

  print('Total vowels are:$voCount');
  print('total consonent are: $consCOunt');
  print('The total sspecial character are:$specialCharacter');
  print('The total digits are:$digitCount');


}
