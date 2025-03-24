class Solution:
    def countPartitions(self, nums: List[int]) -> int:
        total = sum(nums)
        window_left = 0
        count = 0


        for i in range(len(nums) - 1):
            window_left += nums[i]
            window_right = total - window_left

            if (window_left % 2) == (window_right % 2):
                count += 1

        return count        
        