class Solution:
    def minSubArrayLen(self, target: int, nums: List[int]) -> int:
        left = 0
        right = 0
        minimum = 100000000
        subSum = 0
        while right < len(nums):
            subSum = subSum + nums[right]

            while subSum >= target:
                minimum = min(minimum, right - left + 1)
                subSum = subSum - nums[left]
                left += 1

            right += 1    

        return 0 if minimum == 100000000 else minimum