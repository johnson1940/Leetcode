class Solution {
  int characterReplacement(String s, int k) {
     Map<String, int> countFreq = {};
     int left = 0;
     int maxCount = 0;

     for(int right = 0; right < s.length ; right++) {
        countFreq[s[right]] = (countFreq[s[right]] ?? 0) + 1;

        if((right - left + 1) - countFreq.values.reduce(max) > k) {
            countFreq[s[left]] = (countFreq[s[left]] ?? 0) - 1;
            left++;
        }

        maxCount = max(maxCount, right - left + 1);
     }
    return maxCount; 
  }
}