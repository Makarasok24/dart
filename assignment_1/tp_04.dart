

void main() {
  /**
    Strings, Lists and Maps
    CODE : Complete the bellow code to illustrate the concepts:
   */

  // String
  print('String');
  // Declare two strings: firstName and lastName and an integer:age
  String firstName = "Makara";
  String lastName  = "Sok";
  int    age       = 20;

  // Concatenate the 2 strings and the age 
  var result =  '$firstName $lastName $age';
  // Display result
  print('result: $result');

  //line
  print('\n======================================\n');

  //Lists:
  print('Lists');

  // Create a list of integers
  List<int> lists = [1,3,5,6];
  // Add a number to the list
  lists.add(16);
  print('add number 16 into the list: $lists');
  // Remove a number from the list
  lists.remove(5);
  print('remove number 5 of the list: $lists');
  // Insert a number at a specific index in the list
  lists.insert(3, 12);
  print('insert number 12 into index 3 of list : $lists');
  // Iterate over the list and print each number
  print('Display all number of the list by using foreach');
  lists.forEach((list) => 
    print(list)
  );

  //line
  print('\n======================================\n');

  //Maps:
  print('Maps');
  // Create a map with String keys and integer values
  var datas = {
    'id' : 1,
    'name' : "makara sok",
    'age' : 20,
    'gender' : 'male'
  };
  print(datas);

  // Add a new key-value pair to the map
  datas.addAll({'color':"blue"});
  print(datas);
  // Remove a key-value pair from the map
  datas.removeWhere((key,value) => key == 'age');
  print(datas);
  // Iterate over the map and print each key-value pair
  datas.forEach((key,value){
    print('$key \t $value');
  });
} 