void main(){
  // variables in dart 
  int first = 57;
  var second = 97;
  int? fourth; //? mean fourth can be null from database
  
  //type interference
  first = 29;

  int third = first + second + (fourth?? 0);  //?? Provides a fallback value when the left operand is null

  // String interpolation
  print('The sum is $third');
}