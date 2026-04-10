class AccountHolder{
  String _name;
  int _age;
  String _pin;

  AccountHolder({
    required String name,
    required int  age,
    required String pin,
  }) :_name = name,
      _age = age,
      _pin = pin;


  //getter only for _name and _age
  String get  name => _name;
  int get age =>_age; 

  set name(String value){
    if (value.isEmpty){
      print("Name can not be empty.");
    }else{
      _name = value;
    }
  } 
  set age(int value) {
    if(value<18 || value>100){
      print("Age must be between 18-100.");
    } else{
      _age = value;
    }

  }

  set pin(String value) {
    if (!RegExp(r'^\d{4}$').hasMatch(value)) {
      print("PIN must be 4 digits.");
    } else {
      _pin = value;
    }
  }
  bool verifyPin(String input) {
    return input == _pin;
  }
}

// Create a Dart class AccountHolder with the following private fields: _name (String), _age (int), and _pin 
// (String). 
// Requirements: - Provide a setter for _name that rejects empty strings. - Provide a setter for _age that only accepts values between 18 and 100. If invalid, print "Age must be 
// between 18 and 100". - Provide a setter for _pin that only accepts exactly 4-digit numeric strings (e.g. "1234"). If invalid, print 
// "PIN must be 4 digits". - Provide getters for _name and _age. Do not provide a getter for _pin — instead write a method 
// verifyPin(String input) that returns true if input matches _pin. 
// In main(), create an AccountHolder, try setting valid and invalid values for each field, and verify a correct 
// and incorrect PIN. 


void main(){
  AccountHolder holder = AccountHolder(name: "Suraj", age: 22, pin: "9806");
  print("Name: ${holder.name}");
  print("Age:  ${holder.age}");

  holder.name = "Sohil";
  print("Changed name: ${holder.name}");  

  holder.age = 29;
  print("Your Age is:${holder.age}");

  holder.age = 10;
  print("Inavlid age i.e 10 so it hold previous age:${holder.age}");

  holder.pin = "1234";
  // print("The pin never change because do not create the getter for pin: ${holder.pin}");
  print("Verifying the pin::${holder.verifyPin("1234")}");// throws true becaue now pin hold "1234" as a pin

  
}