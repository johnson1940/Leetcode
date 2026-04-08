class Solution {
  bool isAnagram(String s, String t) {
       if(s.length != t.length) return false;

        Map<String, int> counts = {};

        for(int i = 0 ; i < s.length ; i++) {
            String char = s[i];
            counts[char] = (counts[char] ?? 0) + 1;
        }

        for(int i = 0 ; i < t.length ; i++) {
            String char = t[i];
            if(counts[char] == null || counts[char] == 0) {
                return false;
            }
            counts[char] = (counts[char] ?? 0) - 1;

        }
        return true;
  }
}