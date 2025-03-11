class Solution:
    def arrayPairSum(self, nums: List[int]) -> int:
        nums.sort()
        sum = 0
        l = len(nums)
        for i in range(0, l, 2):
            sum += nums[i]
        return sum    


        