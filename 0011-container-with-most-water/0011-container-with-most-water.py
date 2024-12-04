class Solution:
    def maxArea(self, height: List[int]) -> int:
        # consider the min as the height 
        # width = right - left 
        left = 0
        right = len(height) - 1
        result = 0
        while left < right:
            width = right - left
            min_height = min(height[right], height[left])
            max_area = min_height * width
            if max_area > result:
                result = max_area
            elif height[left] > height[right]:
                right -= 1
            else:
                left += 1
        return result                