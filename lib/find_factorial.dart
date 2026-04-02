import 'dart:io';

void main(){
  print('Enter the number to find its factorial.');
  int num = int.parse(stdin.readLineSync()!);


  int iterative = iterativeFavtorial(num);
  print('Iterative result: $num! = $iterative');

  int recursive = recursiveFactorial(num);
  print('Recursive result: $num! = $recursive');



  if (iterative == recursive){
    print('Both the approach are correct');
  } else {
    print('Any of the function are incorrect');
  }

}

int iterativeFavtorial(int n){
  if (n==0 || n==1){
    return 1;
  }

    int fact=1;
    for (int i=2; i<n;i++){
      fact = fact*i;
    }
    return fact;
}


int recursiveFactorial(int n){
  if (n ==0 || n==1){
    return 1;
  }
  return n*recursiveFactorial(n-1);
}