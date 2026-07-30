class Solution {
  int lengthOfLongestSubstring(String s) {
      Set<String> setStr = {};
      int longest = 0;
      int left = 0;

      for(int right = 0 ; right < s.length ; right++) {
         while(setStr.contains(s[right])) {
            setStr.remove(s[left]);
            left++;
         }

         setStr.add(s[right]);
         longest = max(longest, right - left + 1);
      }
    return longest;  
  }
}