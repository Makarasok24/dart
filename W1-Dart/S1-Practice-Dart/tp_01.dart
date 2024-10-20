void main() {

  //EXPLAIN : Explain how Dart infers the type of a variable.
  // Dart infers the type of a varivale base on value that assigned to the
  // variable 

  //example

  // Declare a int variable and let Dart infer its type 
  var number = 16; 
  // Dart infers that `number` is type of `int`

  // Define a variable with an explicit String type
  // Dart infers that `name` is type of `string`
  String name = "Makara";

  // Output
  print(number);// It will display integer
  print(name);// It will display as a string

}