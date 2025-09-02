class Solution:
    def leftRightDifference(self, nums: List[int]) -> List[int]:
        prefix = 0
        suffix_sum = sum(nums)
        result = []
        for i in nums:
            prefix += i
            result.append(abs(prefix - suffix_sum))
            suffix_sum -= i
        return result    