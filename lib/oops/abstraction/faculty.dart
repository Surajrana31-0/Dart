
abstract class Faculty {
  //Properties
  final String name;
  final int age;
  final String address;
 
 
  Faculty ({required this.name,required this.age,required this.address});

  String displayDetails(){
    return "Name is:$name, Age is: $age, And Address is:$address";
  }


//Parent defines a common method
  double calculateYearlySalary(){
    return 0;
    
  }
  double calculateWeeklySalary(){
    return 0;
  }
 
}

//Sub class
class FullTimeFaculty extends Faculty{
  final double monthlySalary;
  FullTimeFaculty({
    required super.name,
    required super.age, 
    required super.address, 
    required this.monthlySalary} );
 

  @override
  double calculateYearlySalary() {
    return monthlySalary * 12;
  }

  @override
  double calculateWeeklySalary() {
    return (monthlySalary * 12) / 52; 
  }


}
class PartTimeFaculty extends Faculty{
  final double hourlySalary;
  final int hoursWorkedPerWeek;

  PartTimeFaculty({
    required super.name, 
    required super.age, required super.address, 
    required this.hourlySalary, 
    required this.hoursWorkedPerWeek});
  
  @override
  double calculateWeeklySalary() {
    return  hourlySalary * hoursWorkedPerWeek;
  
  }
  @override
  double calculateYearlySalary(){
    return calculateWeeklySalary()*52;
  }
   @override
  String toString() {
    return "My name is $name and I'm from $address also my age is $age. Therefore my weekly salary is: ${calculateWeeklySalary()}";
  }
  
}

void main(){

  PartTimeFaculty weekSalary = PartTimeFaculty(
    name: "Suraj", 
    age: 20, 
    address: "KTM", 
    hourlySalary: 25000, 
    hoursWorkedPerWeek: 24);


    double salary = weekSalary.calculateWeeklySalary();
    print(salary);
  

  double yearSalary = weekSalary.calculateYearlySalary();
  print(yearSalary);


  //full time facuty instance or object
  FullTimeFaculty fullTimeFaculty = FullTimeFaculty(
    name: "Ram",
    age: 35,
    address: "Patan",
    monthlySalary: 50000,
  );
  
  print("\n${fullTimeFaculty.displayDetails()}");
  print("Yearly Salary: ${fullTimeFaculty.calculateYearlySalary()}");
  print("Weekly Salary: ${fullTimeFaculty.calculateWeeklySalary()}");
}