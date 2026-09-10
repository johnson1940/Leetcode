class Solution {
  int characterReplacement(String s, int k) {
      
      Map<String, int> counter = {};
      
      int left = 0;
      int maxLength = 0;
      int maxCount = 0;

      for(int right = 0 ; right < s.length; right++) {
          
          String char = s[right];

          counter[char] = (counter[char] ?? 0) + 1;

          maxCount = max(maxCount, (counter[char] ?? 0));

          while((right - left + 1) - maxCount > k) {
              counter[s[left]] = ((counter[s[left]]) ?? 0) - 1;
              left++;
        }

        maxLength = max(maxLength, (right - left + 1));
      }
    return maxLength;  
  }
}