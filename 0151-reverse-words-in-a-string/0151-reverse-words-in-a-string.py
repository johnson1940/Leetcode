class Solution:
    def reverseWords(self, s: str) -> str:
        str_list = s.split()
        str_list.reverse()
        s = ' '.join(str_list)
        return s

        