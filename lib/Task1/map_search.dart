//7. Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
void main(){
  Map contact = {
    "Name":"Suraj",
    "Phone":"95055645",
    "Address":"ktm",
    "cont": "456789"
  };
  print("the contact details of a person is:$contact");//or
  contact.forEach((key, value) {
    print("$key: $value");
  });
  print("");

  var checkLength = contact.keys.where((key) => key.length==4);
  if (checkLength.isEmpty){
    print("No keys found");

  }else{
    checkLength.forEach((key){
      print(' $key:${contact[key]}');
    });
  }


  
}