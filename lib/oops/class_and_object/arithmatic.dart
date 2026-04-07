class Calculator{
  double num1;
  double num2;

 Calculator({required this.num1, required this.num2});
 double add(){
  return num1+num2;
 }
 double sub(){
  return num1-num2;
 }
  double mul(){
    return num1*num2;
  }
  double div(){
    return num1/num2;
  }
}
void main(){
  Calculator a = Calculator(num1: 25, num2: 10);
  print("Addition: ${a.add()}   Subtraction:${a.sub()}   Multiplication: ${a.mul()}   Division: ${a.div()}");
}