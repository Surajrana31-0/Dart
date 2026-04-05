//6. Create a map with name, address, age, country keys and store values to it. Update country name to other country 	and print all keys and values.
void main(){
  Map  personCountry ={
    "Name": "Suraj",
    "address": "Kathmandu",
    "age":23,
    "country":"Nepal"

  } ;
  print("The details of a person is: $personCountry");
  personCountry ["country"] = "America";
  print("Details after Country updated is : $personCountry");


  // Using forEach to iterate through the map
  personCountry.forEach((key, value) {
    print('$key: $value');
  });
  
  print(''); // Yo empty line ho
  
  // Using entries
  for (var entry in personCountry.entries) {
    print('${entry.key}: ${entry.value}');
  }
}


// print('\nOriginal Map:');
//   person.forEach((key, value) {
//     print('$key: $value');