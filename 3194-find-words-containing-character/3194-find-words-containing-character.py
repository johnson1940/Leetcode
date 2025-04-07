class Solution:
    def findWordsContaining(self, words: List[str], x: str) -> List[int]:
        list_of_index = []

        for i in range(len(words)):
            if x in words[i]:
                list_of_index.append(i)

        return list_of_index            
        