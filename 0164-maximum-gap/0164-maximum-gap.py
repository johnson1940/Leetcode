class Solution:
    def maximumGap(self, nums: List[int]) -> int:
        nums.sort(reverse = True)
        difference = 0
        for i in range(len(nums) - 1):
            gap = nums[i] - nums[i + 1]
            if(gap > difference):
                difference = gap
        return difference        
        