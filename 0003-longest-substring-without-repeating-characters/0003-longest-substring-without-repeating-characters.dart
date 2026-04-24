class Solution {
  int lengthOfLongestSubstring(String s) {
    Set<String> window = {};
    int L = 0;
    int maxLength = 0;

    for(int R = 0 ; R < s.length ; R++) {
        while(window.contains(s[R])) {
            window.remove(s[L]);
            L++;
        }
        window.add(s[R]);
        maxLength = max(maxLength, R - L + 1);
    }
    return maxLength;
  }
}