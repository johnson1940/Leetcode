class Solution {
  int lengthOfLongestSubstring(String s) {
      Set<String> numSet = {};
      int longest = 0;
      int left = 0;

      for(int right = 0 ; right < s.length ; right++) {
           while(numSet.contains(s[right])) {
               numSet.remove(s[left]);
               left++;
           }
           numSet.add(s[right]);
           longest = max(longest, right - left + 1);
      }
    return longest;
  }
}