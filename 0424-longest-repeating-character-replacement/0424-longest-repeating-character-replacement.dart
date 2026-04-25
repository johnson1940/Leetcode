class Solution {
  int characterReplacement(String s, int k) {
      Map<String, int> freqMap = {};
      int maxFreq = 0;
      int maxLength = 0;
      int L = 0;

      for(int R = 0; R < s.length ; R++) {
        // ABAB K= 1
        freqMap[s[R]] = (freqMap[s[R]] ?? 0) + 1;
        // {A : 2 , B : 2}
        // We are finding the max freq element 
        maxFreq = max(maxFreq, freqMap[s[R]]!);

      /// length of the string - maxFreq > k -> number of replacement
      while((R - L + 1) - maxFreq > k) {
         /// we are gonna slide the window
         freqMap[s[L]] = (freqMap[s[L]] ?? 0) - 1;
         L++;
      }
      
      /// we are gonna find the max Length of repeating characters
      /// comparing with the window length
      maxLength = max(maxLength, R - L + 1);
      }
      return maxLength;
  }
}