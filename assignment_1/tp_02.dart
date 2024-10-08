//2. Nullable and Non-Nullable Variables
//EXPLAIN : Explain nullable vs non-nullable variables.

//EXPLAIN : When is it useful to have nullable variables?

//CODE : Complete the bellow code to illustrate the concepts:

//dart // Declare a nullable integer variable and assign it a null value

// Declare a non-nullable integer variable and assign it a value

// Assign a new value to the nullable variable 

void main() 
{
  String? name = null; // Nullable type. Can be `null` or string.
  String name_1  = "Makara"; // Non-nullable type. Cannot be `null` but can be string.

  print('Null : $name');
  print('Non-null: $name_1');
  // Declare a nullable integer 
  int? null_able_num = null;
  // Declare a non-nullable
  int nonNullableNumber = 42;

  print('Nullable Number: $null_able_num');
  print('Non_nullable Number: $nonNullableNumber');
  
  null_able_num = 100;
  print('New nullable number: $null_able_num');

  
}
