class Solution {
  int balancedStringSplit(String s) {
      int i = 0;
      int count = 0;
      while(i < s.length) {
        int left = 0;
        int right = 0;
        while(i < s.length) {
          if(s[i] == 'R') right++;
          else left++;
          i++;
          if(left == right) {
            count++;
            break;
          }
        }
      }
    return count;  
  }
}