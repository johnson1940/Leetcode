class Solution {
  int firstUniqChar(String s) {
      Map<String, int> counterMap = {};

      for(String str in s.split('')) {
         counterMap[str] = (counterMap[str] ?? 0) + 1;
      }

      for(int i = 0; i < s.length ; i++) {
        if(counterMap[s[i]] == 1) {
            return i;
        }
      }
    return -1;
  }
}