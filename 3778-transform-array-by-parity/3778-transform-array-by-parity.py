class Solution:
    def transformArray(self, nums: List[int]) -> List[int]:
        parity_array = []

        for i in range(len(nums)):
            if nums[i] % 2 == 0:
                parity_array.insert(0, 0)
            else:
                parity_array.append(1)
        return parity_array           
                
        