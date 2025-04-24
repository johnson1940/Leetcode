class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        two_sum_pair  = {}

        for i, num in enumerate(nums):
            if target - num in two_sum_pair:
                return [i, two_sum_pair[target - num]]
            two_sum_pair[num] = i    