class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        num_set = set(nums)
        return len(num_set) != len(nums)