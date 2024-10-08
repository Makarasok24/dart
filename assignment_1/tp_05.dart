void main() {
  //Loops and Conditions
  //CODE : Complete the bellow code to illustrate the concepts:

  // Use a for-loop to print numbers from 1 to 5
  for(int i=1 ; i <= 5 ; i++){
    print(i);
  }
  // Use a while-loop to print numbers while a condition is true
  int count = 0;
  while(count < 5){
    print("Hello Dart Programming!");
    count++;
  }
  // Use an if-else statement to check if a number is even or odd 
  int num = 1;
  if(num % 2 == 0){
    print("$num is even number!");
  }else{
    print('$num is odd number!');
  }
}