import 'dart:ffi';

void main() {
  //Functions
  // EXPLAIN : Compare positional and named function arguments
  /**
   Positional function: The position of an argument determines which parameter receives the value
   Named : The name of an argument determines which parameter receives the value. 
   */
  /**
   * EXPLAIN : Explain when and how to use arrow syntax for functions
   * We use arrow function when our function is single expression , short.
   * How to use it.
   * 
   * returnType functionName((expr) => return expr);
   */
  
  // CODE : Complete the bellow code to illustrate the concepts:

  //Defining and Invoking a Function:
  // Call the function and print the result

  int result = sum(2,3);
  print("Calling sum function : $result");

  //Positional vs Named Arguments:

  // Display both functions
  // Position function is called.
  positionFunc(4, 6);

  //named function called and assigned the value;
  double rectangleArea = getArea(a:4.5, b:9);
  print('rectangleArea = $rectangleArea');


  //EXPLAIN : Can positional arguement be ommited? Show an example
  // No, it cannot.
  // positionFunc(); Error it must add 2 values here
  positionFunc(6, 99);
  //EXPLAIN : Can named arguement be ommited? Show an example
  // Yes, it can.
  namedFuncOmitted();

  //Arrow Syntax:

  // Define a function using arrow syntax that squares a number

  int square(int x) => x*x;

  // Call the arrow function and print the result
  int getSquare = square(3);
  print("sqeare of 3 $getSquare");
  

}

// Define a function that takes two integers and returns their sum
int sum(int num_1 , int num_2){
  return (num_1+num_2);
}

// Define a function that uses positional arguments
void positionFunc(a,b){
  print(a+b);
  print('a = $a and b = $b');

}

// Define another function that uses named arguments with 
//the required keyword (ex: getArea with rectangle arguments)

double getArea({required a ,required  b}){
  return a*b;
}

// example of omitted 
void namedFuncOmitted({String? name, int? age}){
  print("My name is : $name , I am : $age");
}