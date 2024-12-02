class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        candidate, count = -1, 0

    # Find a candidate
        for num in nums:
           if count == 0:
             candidate = num
           count += (1 if num == candidate else -1)
 
    # Validate the candidate
        if nums.count(candidate) > len(nums) // 2:
           return candidate
        return -1    
        

                    

        