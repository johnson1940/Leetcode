class Solution {
  String removeOuterParentheses(String s) {
    List<String> result = [];
    int depth = 0;
    for(String char in s.split("")) {
      if(char == '(') {
        if(depth > 0) {
         result.add(char);
      }
      depth++;
    }
    if(char == ')') {
      depth--;
      if(depth > 0) {
        result.add(char);
      }
    }
  }
  return result.join("");
  }
}