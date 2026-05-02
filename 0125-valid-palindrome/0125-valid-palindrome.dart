class Solution {
  bool isPalindrome(String s) {
  String alpha = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  int low = 0;
  int high = alpha.length - 1;
  while(low < high) {
    if(alpha[low] != alpha[high]) {
      return false;
    }
      low++;
      high--;
  }
  return true;
}
}