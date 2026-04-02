import 'dart:io';

void main(){
  print('Enter first number.');
  double firstNum = double.parse(stdin.readLineSync()!);


  print('Enter operator (+, -, *, /, %):');
  String operator = stdin.readLineSync()!;
  
  // if (operator == null || !['+', '-', '*', '/', '%'].contains(operator)) {
  //   print('Invalid operator! Please use +, -, *, /, or %');
  //   return;
  // }

  print('Enter second number:');
  double secondNum = double.parse(stdin.readLineSync()!);

  double? result;
  String errorMessage = '';


  switch (operator) {
    case '+':
      result = firstNum + secondNum;
      break;


    case '-':
      result = firstNum - secondNum;
      break;

    case '*':
      result = firstNum * secondNum;
      break;



    case '/':
      if (secondNum == 0) {
        errorMessage = 'Error: Division by zero is not allowed!';
      } else {
        result = firstNum / secondNum;
      }
      break;


    case '%':
      if (secondNum == 0) {
        errorMessage = 'Error: Modulus by zero is not allowed!';
      } else {
        result = firstNum % secondNum;
      }
      break;

    default:
      errorMessage = 'Invalid operator!';
  }


  if (errorMessage.isNotEmpty) {
    print(' the message $errorMessage');
  } else {
    print('$firstNum $operator $secondNum = ${result!.toStringAsFixed(3)}');
  }
  
}
