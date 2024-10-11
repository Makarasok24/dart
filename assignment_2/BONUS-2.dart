void main() {
  isBalance("{[[(a)b]c]d}");
}

String isBalance(String text) {
  List<String> storeText = [];
  
  for (var sign in text.split("")) {
    if (sign == '(' || sign == '{' || sign == '[') {
      storeText.add(sign); // Add opening brackets to stack
    } else if (sign == ')' || sign == '}' || sign == ']') {
      if(storeText.isEmpty){
        print("Not balanced");
        return text;
      }
      // get the last value in the stack 
      String lastSignInStack = storeText.removeLast();
      // Compare opening and closing brackets
      if ((sign == ')' && lastSignInStack != '(') || 
          (sign == '}' && lastSignInStack != '{') || 
          (sign == ']' && lastSignInStack != '[')) {
        print("Not balanced");
        return text;
      }
    }
  }

  // Check if stack is empty at the end, meaning all brackets are balanced
  if (storeText.isEmpty) {
    print("Balanced");
  } else {
    print("Not balanced");
  }

  return text;
}
