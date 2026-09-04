class Solution {
  bool isPalindrome(String s) {
       String cleanedString = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

       int left = 0;
       int right = cleanedString.length - 1;

       while(left < right) {
          if(cleanedString[left] != cleanedString[right]) return false;
          left++;
          right--;
       }
    return true;   
  }
}