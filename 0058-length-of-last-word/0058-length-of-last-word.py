class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        list_of_string = s.split()
        string = ''.join(list_of_string[-1:])
        return len(string)
        
        