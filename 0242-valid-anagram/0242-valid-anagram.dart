class Solution {
  bool isAnagram(String s, String t) {
       if(s.length != t.length) return false;

       Map<String, int> freq = {};

       for(String c in s.split('')) {
           freq[c] = (freq[c] ?? 0) + 1;
       }

       for(String c in t.split('')) {
           freq[c] = (freq[c] ?? 0) - 1;
       }

       return freq.values.every((v) => v == 0);
  }
}