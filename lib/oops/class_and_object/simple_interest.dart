

class Aritmatic{
  int principle;
  int time;
  int rate;


  Aritmatic({required this.principle, required this.rate, required this.time});

  @override
  String toString(){
    return "($principle, $time, $rate)";
  }
  double simpleInterest(){
    return  (principle*time*rate)/100;
  }
}
void main(){
  Aritmatic si = Aritmatic(principle:1000, time:2,rate:13);
  print(si);
}