class Solution:
    def areOccurrencesEqual(self, s: str) -> bool:
        hash_table = {}

        for char in s:
            if char in hash_table:
                hash_table[char] += 1
            else:
                hash_table[char] = 1
                
        all_same = len(set(hash_table.values())) == 1
        return all_same           

        