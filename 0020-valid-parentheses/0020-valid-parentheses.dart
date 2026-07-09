class Solution {
  bool isValid(String s) {
   List<String> stack = [];

    for(String bracket in s.split("")) {
      if(bracket == '(' || bracket == '[' || bracket == '{') {
        stack.add(bracket);
    }
    else {
      if(stack.isEmpty) return false;
      if(bracket == ')' && stack.last != '(') return false;
      if(bracket == '}' && stack.last != '{') return false;
      if(bracket == ']' && stack.last != '[') return false;
      
      stack.removeLast();
    }
  }
  return stack.isEmpty;
}
}
    