void main() {
  /**
    Strings, Lists and Maps
    CODE : Complete the bellow code to illustrate the concepts:
   */

  // String

  // Declare two strings: firstName and lastName and an integer:age
  String firstName = "Makara";
  String lastName  = "Sok";
  int    age       = 20;

  // Concatenate the 2 strings and the age 
  var result =  '$firstName $lastName $age';
  // Display result
  print('result: $result');

  //Lists:

  // Create a list of integers
    List<int> lists = [];

  // Add a number to the list
  lists.add(16);
  print(lists);
  // Remove a number from the list
  lists.remove(16);
  print(lists);
  // Insert a number at a specific index in the list
  lists.insert(0, 12);
  print(lists);
  // Iterate over the list and print each number
} 