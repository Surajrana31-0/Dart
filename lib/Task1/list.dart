void main(){
  List<String> names = ["Suraj", "Shain", "Siddhartha","Komal"];
  List<String> lastname =["Rana", "Rai","Bhattrai","karki"];

  namePrint(names, lastname);
}

void namePrint(List<String> names, List<String> lastname){
  List<String> fullName = [];
  for(int i =0; i<lastname.length;i++){
    String full = ("${names[i]} ${lastname[i]}");
    fullName.add(full);
  }
  print (fullName);
}