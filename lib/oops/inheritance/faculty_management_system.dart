class Faculty{
  final String name;
  final int age;
  final String address;


  Faculty(this.name, this.age, this.address);
  void displayDetails(){
      print("Name:$name, Age:$age, Address:$address");
  }

  double calculateYearlySalary(){
    return 0;
  }
}

class FullTimeFaculty extends Faculty{
  double monthlySalary;

  FullTimeFaculty(super.name, super.age, super.address, this.monthlySalary);

  @override
  double calculateYearlySalary(){
    return monthlySalary*12;

  
  }

  @override
  String toString(){
    return "monthalySalary: ${calculateYearlySalary()}";
  }

}




class PartTimeFaculty extends Faculty{
  double hourlySalary;
  int hourPerWeek;
  PartTimeFaculty(super.name, super.age, super.address, this.hourlySalary, this.hourPerWeek); //or this. name so need to:super(name,age);


  double weeklySalary(){
  return hourlySalary*hourPerWeek;
  }


  @override
  double calculateYearlySalary(){
    return weeklySalary()*52;
  }


  @override
  String toString(){
    return "monthalySalary: ${calculateYearlySalary()}";
  }

}


void main(List<String>args){
  Faculty dis = Faculty("Suraj", 25, "Kathmandu");
  print(dis);
  dis.displayDetails(); 




  FullTimeFaculty fulltime = FullTimeFaculty("Suraj", 22, "Kathmandu", 2500);
  PartTimeFaculty parttime = PartTimeFaculty("Priya", 25,"Pokhara",  2000, 24);

  print(fulltime);
  print(parttime);


  print("");
  print("Yearly Salary Full time: ${fulltime.calculateYearlySalary()}");
  print("Yearly salary part time: ${parttime.calculateYearlySalary()}");
  print("Monthly Salary part time: ${parttime.weeklySalary()}");
  




  
}