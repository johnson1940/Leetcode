class Solution:
    def numberOfArithmeticSlices(self, nums: List[int]) -> int:
        if len(nums) < 3:
            return 0
        count = 0
        curr_length = 2
        common_diff = nums[1] - nums[0]

        for i in range(2, len(nums)):
            if nums[i] - nums[i-1] == common_diff:
                curr_length += 1
                count += (curr_length - 2)
            else:
                common_diff = nums[i] - nums[i - 1]
                curr_length = 2
        return count                
        