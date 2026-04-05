void main(){
  List<String> friend = ["Siddhartha", "Sahin", "Suraj","Samartha","Prashant","Dipesh","Niraj","Avay"];

  List<String> finalname = friend.where((name)=>name.toLowerCase().startsWith('a')).toList()..sort();

  friend.sort();
  print(friend);
  print(finalname);
}




