void main(){
  List<int> oddEvenArr = [1,5,4,8,7,6,20];
  //1.
  oddEvenCheck(oddEvenArr);


  //2.
  ({int odd, int even, int sumOfEven, int sumOfOdd}) oddeven = calculateOddEvenlai(oddEvenArr);//calls the function and store the record
  print("odd: ${oddeven.odd} and even:${oddeven.even} also the sum of odd : ${oddeven.sumOfOdd} and the sum of even: ${oddeven.sumOfEven}");// Access the value using the dot notation
 

 //3.
  (int, int, int, int) result = calculateOddEven(oddEvenArr);
  print('The total count are: ${oddEvenArr.length}');
  print("The odd count are:${result.$4}, even coount:${result.$2}, sum of odd:${result.$3} and the sum of even are:${result.$1}");  //$follows the return type 
  
}


//1.
void oddEvenCheck(List<int> oddEvenArr){ //this must be void  to return the values
  int odd = 0;
  int even = 0;
  int evenSum = 0;
  int oddSum = 0;
  print('the total count are:${oddEvenArr.length}');
  for (int i = 0; i<oddEvenArr.length;i++){
    if(oddEvenArr[i]%2==0){
      even++;
      evenSum = evenSum + oddEvenArr[i];
    }else{
      odd++;
      oddSum  = oddSum + oddEvenArr[i];
    }
  }

  print('odd numbers: $odd, even numbers:$even , evenSum :$evenSum and oddSum:$oddSum');

  
}


//3.
(int, int,int,int) calculateOddEven(List<int> oddEvenArr){
  int even=0;
  int odd=0;
  int sumOfOdd=0;
  int sumOfEven=0;
  for(int i in oddEvenArr){
    if (i%2==0){
      even++;
      sumOfEven+=i;
      
    }else{
      odd++;
      sumOfOdd+=i;
    }

  }
  return(sumOfOdd,even,sumOfEven,odd);
}


//2. record
({int odd, int even,int sumOfEven,int sumOfOdd}) calculateOddEvenlai(List<int> oddEvenArr){
  int even=0;
  int odd=0;
  int sumOfOdd=0;
  int sumOfEven=0;
  for(int i in oddEvenArr){
    if (i%2==0){
      even++;
      sumOfEven+=i;// or can be sumOfEven += oddEvenArr
      
    }else{
      odd++;
      sumOfOdd+=i;
    }

  }
  return(odd:odd,even:even,sumOfEven:sumOfEven,sumOfOdd:sumOfOdd);
}