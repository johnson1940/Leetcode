class Solution:
    def isAnagram(self, s: str, t: str) -> bool:

        s_hash_map = {}
        t_hash_map = {}

        for char in s:
            s_hash_map[char] = s_hash_map.get(char, 0) + 1

        for char in t:
            t_hash_map[char] = t_hash_map.get(char, 0) + 1

        return s_hash_map == t_hash_map      


                

          