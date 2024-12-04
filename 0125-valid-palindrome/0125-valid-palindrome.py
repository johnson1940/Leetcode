class Solution:
    def isPalindrome(self, s: str) -> bool:
        s = ''.join(char for char in s if char.isalnum()).lower()
        left_pointer = 0
        right_pointer = len(s) - 1
        is_palindrome = True
        while left_pointer < right_pointer:
            if s[left_pointer] != s[right_pointer]:
               is_palindrome = False
               break
            left_pointer += 1
            right_pointer -= 1
        return is_palindrome       
