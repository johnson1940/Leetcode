class Solution:
    def searchInsert(self, nums: List[int], target: int) -> int:
        first_point = 0
        last_point = len(nums) - 1
        while first_point <= last_point:
            mid_point = first_point + (last_point - first_point) // 2
            if nums[mid_point] == target:
                return mid_point
            elif nums[mid_point] < target:
                first_point = mid_point + 1
            else:
                last_point = mid_point - 1
        return first_point      

        