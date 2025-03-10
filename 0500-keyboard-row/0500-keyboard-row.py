class Solution:
    def findWords(self, words: List[str]) -> List[str]:
        first = 'qwertyuiop'
        second = 'asdfghjkl'
        third = 'zxcvbnm'
        res = []
        for word in words:
            w = word.lower()
            if len(set(first+w)) == len(first) or len(set(second+w)) == len(second) or len(set(third+w)) == len(third):
                res.append(word)
        return res        
        