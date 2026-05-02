class Solution {
  void reverseString(List<String> s) {
      int low = 0;
      int high = s.length - 1;
        while(low < high) {
          String temp = s[low];
          s[low] = s[high];
          s[high] = temp;
          low++;
          high--;
     }
  }
}