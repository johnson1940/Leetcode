class Solution {
  int evalRPN(List<String> tokens) {
  List<int> stack = [];
  
  for (String token in tokens) {
    int? num = int.tryParse(token);
    
    if (num != null) {
      stack.add(num);
    } else {
      int b = stack.removeLast();
      int a = stack.removeLast();
      
      switch (token) {
        case '+':
          stack.add(a + b);
          break;
        case '-':
          stack.add(a - b);
          break;
        case '*':
          stack.add(a * b);
          break;
        case '/':
          stack.add(a ~/ b);
          break;
      }
    }
  }
  
   return stack.last;
 }
}