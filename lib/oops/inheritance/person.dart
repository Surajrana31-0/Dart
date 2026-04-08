class Person{
  String name;
  int age;

  Person(this.name, this.age);

  void displayName(){
    print("Name:$name");
  }

}
class Employee extends Person{
  double salary;

  Employee(super.name, super.age, this.salary);


@override
String toString(){
  return "Name: $name, Age:$age, Salary:$salary";
}
}




class Staff extends Person{
  String address;

  Staff(String name, int age,this.address): super(name, age);

  @override
  String toString(){
    return "Name:$name, Age:$age, Address:$address";
  }
}
void main(List<String> args){
  Employee employee = Employee("Suraj", 25, 25000.3);
  print(employee);
  employee.displayName();

  Staff staff = Staff("Suraj", 25, "Ktm");
  print(staff);
  staff.displayName();

}