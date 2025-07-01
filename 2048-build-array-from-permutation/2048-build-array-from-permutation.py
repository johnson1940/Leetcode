class Solution:
    def buildArray(self, nums: List[int]) -> List[int]:
        per_num = [nums[nums[i]] for i in range(len(nums))]
        return per_num   
        