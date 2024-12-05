class Solution:
    def maxOperations(self, nums: List[int], k: int) -> int:
        nums.sort()  # Sort the list once
        left_p = 0
        right_p = len(nums) - 1
        count = 0
        
        while left_p < right_p:
            current_sum = nums[left_p] + nums[right_p]
            
            if current_sum == k:
                count += 1
                left_p += 1  # Move both pointers to avoid reusing the same elements
                right_p -= 1
            elif current_sum < k:
                left_p += 1
            else:
                right_p -= 1
        
        return count