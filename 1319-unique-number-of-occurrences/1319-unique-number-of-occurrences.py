class Solution:
    def uniqueOccurrences(self, arr: List[int]) -> bool:
        count_map = {}
        for item in arr:
            if item in count_map:
                count_map[item] += 1
            else:
                count_map[item] = 1

        count = list(count_map.values())
        return len(count) == len(set(count))

        
        