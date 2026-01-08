class Solution {
  bool backspaceCompare(String s, String t) {
    List<String> removeCharacter(s) {
        List<String> arr = [];
        for(var char in s.split('')){
           if(char == '#') {
             if(arr.isNotEmpty){
               arr.removeLast();
             }
           }
           else if(char != "#") {
               arr.add(char);
           }
        }
      return arr;   
    }
    return removeCharacter(s).join() == removeCharacter(t).join();
  }
}