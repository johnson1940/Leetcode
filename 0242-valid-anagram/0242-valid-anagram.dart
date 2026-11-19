class Solution {
  bool isAnagram(String s, String t) {
       
       if(s.length != t.length) return false;

       Map<String, int> freqMap = {};

       for(String ch in s.split("")) {
           freqMap[ch] = (freqMap[ch] ?? 0) + 1;
       }

       for(String ch in t.split("")) {
            freqMap[ch] = (freqMap[ch] ?? 0) - 1;
       }

    return freqMap.values.every((v) => v == 0);  
  }
}