class Solution:
    def targetIndices(self, nums: List[int], target: int) -> List[int]:
        targeted_index = []

        nums.sort()

        for i in range(len(nums)):
            if nums[i] == target:
                targeted_index.append(i)


        return targeted_index    
        