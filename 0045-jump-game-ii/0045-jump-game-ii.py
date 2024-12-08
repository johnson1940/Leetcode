class Solution:
    def jump(self, nums: List[int]) -> int:
        n = len(nums)
        current_index = 0
        farthest_distance = 0
        jump = 0
        for i in range(n - 1):

            farthest_distance = max(farthest_distance, i + nums[i])

            if i == current_index:
                jump += 1
                current_index =  farthest_distance


                if current_index >= n-1:
                   break

        return jump           

        