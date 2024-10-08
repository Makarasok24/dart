void main() {
  /**
   * Final and const
    EXPLAIN : Describe the difference between final and const.
    + Final: final variable can be set only once, we cannot change the value of final variable
    + Const: const variable is a compile-time constant. (Const variables are implicitly final.)

    CODE : Complete the bellow code to illustrate the concepts:
   */

  // Declare a final variable and assign it the current date and time
  final date = DateTime.now();
  // Display date
  print(date);
  // Can you declare this variable as const? Why?
  // const dateConst = DateTime.now();
  // print(dateConst);
  // We cannot declare this variable as const because it fetch from run time not compile-time.

  // Declare a const variable with a integer value
  const number = 16;
  print('number : $number');

  // Can you reassign the value of this final variable? Why?  
  // No, we cannot. Because final variable can be set only one.
}