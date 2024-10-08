
void main() 
{

  //  EXPLAIN : Explain nullable vs non-nullable variables.
  /** 
   *  Nullable is able to be null or not null in a variable.
   *  Non-nullable is not able to be null in a variable.
   */

  // EXPLAIN : When is it useful to have nullable variables?
  /**
   * Nullable variables are useful in situation where variable not require or optional to have a value 
   * or add the value latter.
   */

  // Declare a nullable integer 

  int? nullAbleNumber;
  
  // Declare a non-nullable
  int nonNullableNumber = 16;

  // Display value of both variable
  print('Nullable Number: $nullAbleNumber');
  print('Non_nullable Number: $nonNullableNumber');
  
  // Assigned new value into nullAble variable
  nullAbleNumber = 100;
  // Display value of nullVariable
  print('New nullable number: $nullAbleNumber');

  
}
