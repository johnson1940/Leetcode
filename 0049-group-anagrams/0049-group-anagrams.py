from collections import defaultdict
class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        
        group_anagram = defaultdict(list)

        for s in strs:
            k = ''.join(sorted(s))
            group_anagram[k].append(s)
        return list(group_anagram.values())    
        