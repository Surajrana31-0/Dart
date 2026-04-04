import 'dart:io';

void main(){
  print("Enter the number of expences.");
  int count = int.parse(stdin.readLineSync()!);
  List<int> amount = [];

  for (int i = 0; i<count; i++){
    print("Enter expenses ${i+1}:");
    int listAmount = int.parse(stdin.readLineSync() ?? "0");
    amount.add(listAmount);
  }

  int totalExpense = expenceSum(amount);
  print("Total Expenses:${totalExpense}");
}

int expenceSum(List<int> amount){

  int sum = 0;
  
  for (int i = 0; i<amount.length;i++){
    sum+=amount[i];
  }
  return sum;


}