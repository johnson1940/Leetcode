class Solution {
  bool isPalindrome(String s) {
     int left = 0;
     int right = s.length - 1;

     while(left < right) {
        while (left < right && !s[left].toLowerCase().
        contains(RegExp(r'[a-z0-9]'))) {
             left++;
        }

        while (left < right && !s[right].toLowerCase().
        contains(RegExp(r'[a-z0-9]'))) {
             right--;
        }

        if(s[left].toLowerCase() != s[right].toLowerCase()) {
            return false;
        }

        left++;
        right--;

     }
    return true;  
  }
}