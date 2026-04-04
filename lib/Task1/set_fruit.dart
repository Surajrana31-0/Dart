void main(){
  List<String> fruits = ["Aple", "Banana", "Orange","Grapse","Pineapple","Guava","Mango","Papaya","Peach","Raspbarry"];

  //using three loop
  listPrint(fruits);
  listPrintIterator(fruits);
  whileLoopbata(fruits);

}

void listPrint(List<String> fruits){
  print(fruits.length);
  for(int i=0; i < fruits.length;i++){
    print("${i+1}. ${fruits[i]}");
  }

  
}

void listPrintIterator(List<String> fruits){
 Iterator<String> iterator = fruits.iterator;
 while(iterator.moveNext()){
  print(iterator.current);
 }

 
}

void whileLoopbata(List<String> fruits){
  int i=0;
  while(i<fruits.length){
    
    print("${i+1}. ${fruits[i]}");
    i++;
  }
 }