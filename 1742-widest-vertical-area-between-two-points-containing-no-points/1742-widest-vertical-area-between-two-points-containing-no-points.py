class Solution:
    def maxWidthOfVerticalArea(self, points: List[List[int]]) -> int:
        sorted_array = sorted([x for x , _ in points])

        max_width = 0
        for i in range(len(sorted_array) - 1):
            max_width = max(max_width, sorted_array[i + 1] - sorted_array[i])
        return max_width    
