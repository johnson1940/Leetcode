class Solution {
  bool isPalindrome(String s) {
    String nonAlpha = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');
    String cleaned = nonAlpha.toLowerCase();
    
    int left_pointer = 0;
    int right_pointer = cleaned.length - 1;

    while(left_pointer < right_pointer) {
        if(cleaned[left_pointer] == cleaned[right_pointer]) {
            left_pointer++;
            right_pointer--;
        }
        else {
            return false;
        }
    }
    return true;
  }
}