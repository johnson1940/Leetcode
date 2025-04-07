class Solution:
    def maxVowels(self, s: str, k: int) -> int:
        vowels = set('aeiou')
        max_vowels_count = 0
        current_count = 0


        for i in range(k):
            if s[i] in vowels:
                current_count += 1
        max_vowels_count = current_count


        for i in range(k, len(s)):
            if s[i - k] in vowels:
                current_count -= 1
            if s[i] in vowels:
                current_count += 1
            max_vowels_count = max(max_vowels_count, current_count)

        return max_vowels_count                    
                    


        