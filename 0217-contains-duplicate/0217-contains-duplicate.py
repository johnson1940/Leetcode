class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        num_set = set(nums)
        num_set_length = len(num_set)
        original_num_length = len(nums)
        return original_num_length != num_set_length 