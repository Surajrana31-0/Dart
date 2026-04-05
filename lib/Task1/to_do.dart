//8. Create a simple to-do application that allows user to add, remove, and view their task.
import 'dart:io';

void main(){
  List<String> Task = [];

  while(true){
    print("1.add your task.");
    print("2.remove your task");
    print("3.view your task");
    print("4.Exit");
    stdout.write("Enter ny option from 1-4");


    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        addTask(Task);
        break;
      case '2':
        removeTask(Task);
        break;
      case '3':
        viewTasks(Task);
        break;
      case '4':
        print('Thik xha jau!');
        return;
      default:
        print('invalid option! Please choose from 1-4.');
    }
  }
  
}
void addTask(List<String> Task){
  stdout.write('Enter task description: ');
  String? t1 = stdin.readLineSync();

  if(t1!=null && t1.trim().isEmpty){
    Task.add(t1.trim());
    print("task added.");
  }else{
    print("task empty huna sakdaina");
  }
}

void removeTask(List<String> Task) {
  if (Task.isEmpty) {
    print('No tasks to remove!');
    return;
  }
  viewTasks(Task);
  stdout.write('\nEnter task number to remove: ');
  String? input = stdin.readLineSync();
  int? index = int.tryParse(input ?? '');
  if (index != null && index >= 1 && index <= Task.length) {
    String removedTask = Task.removeAt(index - 1);
    print('Removed task: "$removedTask"');
  } else {
    print('Please enter a valid number!');
}
}

void viewTasks(List<String> Task) {
  if (Task.isEmpty) {
    print('\no tasks yet! Add some tasks to get started.');
  } else {
    print('n YOUR TASKS:');
    print('-' * 30);
    for (int i = 0; i < Task.length; i++) {
      print('${i + 1}. ${Task[i]}');
    }
    print('-' * 30);
    print('Total tasks: ${Task.length}');
  }
}