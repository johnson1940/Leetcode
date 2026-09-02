class Solution {
  bool isAnagram(String s, String t) {
       Map<String, int> freqMap = {};

       if(s.length != t.length) return false;

       for(String c in s.split('')) {
          freqMap[c] = (freqMap[c] ?? 0) + 1;
       }

       for(String c in t.split('')) {
          freqMap[c] = (freqMap[c] ?? 0) - 1;
       }

    return freqMap.values.every((v) => v == 0);
  }
}