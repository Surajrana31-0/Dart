void main(){

  //Declare and initiallize an array of String
  var array = ["Suraj", "Sine","Sid"];
  print(array); 


  



  //empty array
  var array1 = [];
  array1.add("Ram");
  array1.add("Shyam");

  print(array1);



  List<int> arr = [ 12, 10, 4,56, 8, 56, 45,87,65,91,56];
  int sum = sumFind(arr);
  print('The sum of array is $sum');
}

int sumFind(List<int> arr){
  int sum=0;
  for(int i=0; i < arr.length; i++){
    sum=sum+arr[i];
    
    

  }
  return sum;



  
}

//biggest 
