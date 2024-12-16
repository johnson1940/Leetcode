class Solution:
    def increasingTriplet(self, nums: List[int]) -> bool:
        right = 100000000000000000
        left = 100000000000000000
        for num in nums:
            if num <= right:
                right = num
            elif num <= left:
                left = num
            else:
                return True


        return False                
        