class Solution {
  int characterReplacement(String s, int k) {
      Map<String, int> counterMap = {};
      int maxFreq = 0;
      int maxLength = 0;
      int left = 0;

      for(int right = 0 ; right < s.length ; right++) {
        
         counterMap[s[right]] = (counterMap[s[right]] ?? 0) + 1;

         maxFreq = max(maxFreq, counterMap[s[right]] ?? 0);

         if((right - left + 1) - maxFreq > k) {
             counterMap[s[left]] = (counterMap[s[left]] ?? 0) - 1;
             left++;
         }

         maxLength = max((right - left + 1), maxLength);
      }

    return maxLength;  
  }
}