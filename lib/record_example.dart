void main(){
  ({String name , int age, bool status}) value = returnnameAgeStatus();
  print("My name is:${value.name}");//no need to call function use value stored in record on a variable named Value.
}

({String name, int age, bool status}) returnnameAgeStatus(){
  return (name:"Suraj", age:52, status: false);    
}