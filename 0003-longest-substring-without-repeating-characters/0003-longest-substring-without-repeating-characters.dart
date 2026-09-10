class Solution {
  int lengthOfLongestSubstring(String s) {
       Set<String> charSet = {};
       int left = 0;
       int maxWindow = 0;

       for(int right = 0; right < s.length ; right++) {
           while(charSet.contains(s[right])) {
              charSet.remove(s[left]);
              left++;
           }
        charSet.add(s[right]);
        maxWindow = max(maxWindow, right - left + 1);   
       }
    return maxWindow;   
  }
}