void main() {
  // List of student scores
  List<int> scores = [45, 67, 82, 49, 51, 78, 92, 30];

  // You code
  var result = scores.where((i) => i >= 50);
  var countStudentPassed = result.length;
  //display list of students who passed
  print(result.toList());
  print('$countStudentPassed students passed'); 
}