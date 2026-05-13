class Solution {
  bool isValid(String s) {

    List<String> stack = [];
    Map<String, String> closeOpenMap = {")" : "(", "}" : "{", "]" : "["};

    for(String c in s.split("")) {
        if("([{".contains(c)) {
            stack.add(c);
        }
        else {
            if(stack.isEmpty) return false;
            if(stack.last != closeOpenMap[c]) return false;
            stack.removeLast();
        }
    } 
   return stack.isEmpty;
  }
}