import 'dart:io';

void main(){
  print("");
  List<String> days = [];

  for(int i=0; i<7;i++){
    print("Enter day ${i+1}:");
    String listDay = stdin.readLineSync() ?? "0";
    days.add(listDay);
  }

  addDays(days);
}

void addDays(List<String> days){
  for (int i=0; i<days.length;i++){
    print("${i + 1}. ${days[i]}");
  }
  print(days);
  

}