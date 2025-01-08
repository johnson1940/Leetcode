from typing import List

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        num_map = {}
        for i, num in enumerate(nums):
            com = target - num
            if com in num_map:
                return [num_map[com], i]
            num_map[num] = i
        return num_map[num]        
               

        