class Solution {
  int lengthOfLongestSubstring(String s) {
       Set<String> charSet = {};
       int left = 0;
       int maxWindowLength = 0;

       for(int right = 0 ; right < s.length ; right++) {
           while(charSet.contains(s[right])) {
               charSet.remove(s[left]);
               left++;
           }
        charSet.add(s[right]);
        maxWindowLength = max(maxWindowLength, right - left + 1);   
       }
    return maxWindowLength;   
  }
}