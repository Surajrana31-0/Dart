


void main(){
  print(add(3,5,4,60));
  
  print(simpleINT(10000, 12, 5));
  
  print(areaOfCircle(4, 22));
}

//Optional Parameter : []
int add(int num1 , int num2, [int num3=0, int num4=0]){
      return num1 + num2 + num3 + num4;
    }



double simpleINT( double principle, double time, double rate){
    return (principle * time * rate) /100;
  }



double areaOfCircle(double radious,  [double pi=3.14]){
    return pi*(radious*radious);
  
}
  