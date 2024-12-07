class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        left = 0
        windows = []
        max_length = 0

        for right in range(len(s)):
            while s[right] in windows:
                windows.pop(0)

            windows.append(s[right])

            max_length = max(max_length, len(windows))

        return max_length

        