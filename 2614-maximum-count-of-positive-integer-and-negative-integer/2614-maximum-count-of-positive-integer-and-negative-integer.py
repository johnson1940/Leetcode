class Solution:
    def maximumCount(self, nums: List[int]) -> int:
        positive, negative = 0, 0

        for i in range(len(nums)):
            if nums[i] > 0 and nums[i] != 0:
                positive += 1
            elif nums[i] < 0 and nums[i] != 0:
                negative += 1

        return positive if positive > negative else negative             
        