// class Faculty{
//   String name;
//   int age;
//   String address;


//   Faculty(this.name, this.age, this.address);
//   void displayDetails(){
//       return "Name:$name, Age:$age, Adderss:$address";
//   }
// }

// class FullTimeFaculty extends Faculty{
//   double monthlySalary;

//   FullTimeFaculty(super.name,super.age, this.monthlySalary);
//   double calculateFultimeSalary(){
//     return monthlySalary*12;

  
//   }

//   // @override
//   // String toString(){
//   //   return "monthalySalary: ${monthlySalary*12}";
//   // }

// }




// class PartTimeFaculty extends Faculty{
//   double hourlySalary;
//   int hourPerWeek;
//   PartTimeFaculty(super.name, super.age, this.hourlySalary, this. hourPerWeek);

//   double calculatePartTimeSalary(){
//   return "WeeklySalary: ${hourlySalary*hourPerWeek}";
//   }

//   double calculateYearlyTimeSalary(){
//     return calculateYearlyTimeSalary()*52;
//   }
// }

//   // @override
//   // String toString(){
//   //   return "WeeklySalary: ${hourlySalary*hourPerWeek}";
//   // }


// void main(List<String>args){
//   Faculty dis = Faculty("Suraj", 25, "Kathmandu");
//   print(dis);
//   dis.displayDetails(); 


  
// }