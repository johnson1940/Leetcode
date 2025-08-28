class Solution:
    def smallerNumbersThanCurrent(self, nums: List[int]) -> List[int]:
        count = 0
        count_list = []
        for i in range(len(nums)):
            for j in range(len(nums)):
                if nums[i] != nums[j] and nums[j] < nums[i]:
                    count += 1
            count_list.append(count)
            count = 0
        return count_list            

                    
        