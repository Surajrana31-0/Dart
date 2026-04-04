void main(){
  Map cityOnCountry = {
    "Nepal": "Pokhara",
    "India": "Delhi",
    "America": "LasVegas"
  };
  print(cityOnCountry);
  print(cityOnCountry.keys);
  print(cityOnCountry.values);

  Map cityCounty =  <String, String>{};  //  or Map<String, String>();  // Creates an empty Map with String keys and String values
  cityCounty["Delhi"] = "India";
  cityCounty["New York"] = "USA";
  cityCounty["Tokyo"] = "Japan";
  cityCounty["Paris"] = "France";
  print (cityCounty);

  String searchKey = "Tokyo"; //search values by keys
  print("$searchKey is in ${(cityCounty[searchKey])}");
  String? country = cityCounty["Tokyo"];
  print(country);
    

//   This dosent work because we can search by keys not by values
//   String searchValue = "Japan"; //search by values
//   print("$searchValue's capital city is ${(cityCounty[searchValue])} ");
}
 

  


  
