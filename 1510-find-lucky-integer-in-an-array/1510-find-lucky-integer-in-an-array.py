class Solution:
    def findLucky(self, arr: List[int]) -> int:
        freq = {}
        lucky_nums = []
        for arr in arr:
            freq[arr] = freq.get(arr, 0) + 1
        for key, value in freq.items():
            if key == value:
                lucky_nums.append(value)    

        return  max(lucky_nums) if lucky_nums else -1