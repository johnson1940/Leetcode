class Solution {
    int romanToInt(String s) {
    Map<String, int> symbolValueMap = {
        'I': 1, 'V': 5, 'X' : 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000
    };
   
     int result = 0;
    
     for(int i = 0 ; i < s.length ; i++) {
        int current = symbolValueMap[s[i]] ?? 0;
       
       if(i < s.length - 1) {
       int next = symbolValueMap[s[i + 1]] ?? 0;
       if(current < next) {
         result -= current;
       }
       else {
         result += current;
       }
       }
       else {
         result += current;
       }
     }
  
    return result;
 }
}