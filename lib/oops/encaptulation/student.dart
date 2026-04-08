class Student{
  String _name;
  int _age;
  int _marks;

//gettes
String get name => _name;//to handel nullable value we must use ?? " "
int get age => _age;
int get marks => _marks;

//setters
set name(String value) => _name = value; 
set age(int value) =>_age = value;
set marks(int value){
  if (value>=0 && value<=100){
    _marks = value;
    print("Mark set to : $value");
  }else{
    print("Invalid mark! Must be between 0 t 100");
  }
}

Student({required String name, required  marks, required  age }):
_name = name,
_age = age,
_marks = marks;






  

}

void main(){
  Student stud = Student(name: "Suraj", marks: 50, age: 22);
  print("My name is ${stud.name} and I'm ${stud.age} year's old also I got marks of: ${stud.marks}");
  stud.marks = 120;
  print("Marks: ${stud.marks}");
}