void main(){
  print(areaCircle(radious: 25));
  print(areaCircle(radious: 52, pi: 98));
  print(areaCircle(pi:98, radious:26));



}
//named parameter :{}===everything is optional.
double areaCircle({required double radious , double pi=3.14}){
  return pi *radious * radious;
}


