class Person {
  //Properties made private  with _
  String _name;
  int _age;
  bool _status;

  //Getters
   String get name => _name;
   int get age => _age;
   bool get status => _status;


  // //Setters
  set name(String value) => _name = value;
  set age(int value) => _age = value;
  set status(bool value) => _status = value;


  // constructor: no return type
  // Person(this.name, this.age, this.status);
  //Name constructor with only  name
  // Person.withNameVaKo(this.name):age = 0, status= false;


  //become public
  Person({required String name , required int age,  required bool status})//main constructor with named parameter
  : _name =name,
  _age=age,
  _status = status;


 //Named constructor with all parameter
  // Person.withNameVaKo({required this.name, required this.age, required this.status});

  Person.withNameVaKo({required String name, required int age, required bool status}):
  _name = name,
  _age = age,
  _status = status;

  // Person.withNameVaKo({required this.name}):
  // _name = name,
  //  _age = 0,
  //  _status =true;

  
  // Person.withNameAndAgeVaKo(this.name, this.age):status=true;
  // Named constructor with name and age
  Person.withNameAndAgeVaKo({required String name, required int age})
      : _name = name,
        _age = age,
        _status = true;
  //Overloadin:same name different signature or parameter
  @override
  String toString(){
    return "My name is $name and I'm $age which is $status";
  }

  //we must need this if not using getter  -- But then you lose encapsulation!
//   @override
//   String toString(){
//   return "My name is $_name and I'm $_age which is $_status"; 
// }

  
  

  // final String name;
  // final int age;
  // final bool status;
  // Person({required String name , required int age,  required bool status})
}

void main(){
  Person p = Person(name: "Suraj", age: 20, status: true);
  print(p);
  print(p._name);

  Person p1 = Person.withNameVaKo(name: "Suraj", age: 22, status: true);
  print(p1);

  Person p2 = Person.withNameAndAgeVaKo(name: "Suraj", age: 20);
  print(p2);
  // Person p2 = Person.withNameAndAgeVaKo("Suraj", 22);
  // print(p2);

  // Person p3 = Person(name: "suraj", age: 25, status: false);
  // print(p3);
  
  //using getter and setter we can modify the values of variable
  Person p4 = Person(name: "suraj", age: 25, status: true);
  print(p4);

  p4.name = "Rohit";
  p4.age = 30;
  p4.status = false;
  print(p4);  //this Shows updated values via getters because we modify


  
}