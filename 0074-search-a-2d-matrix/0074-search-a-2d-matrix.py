class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        m_rows = len(matrix)
        n_colums = len(matrix[0])
        left = 0
        right = m_rows * n_colums - 1
        while left <= right:
            mid = (left + right) // 2
            row = mid // n_colums
            colums = mid % n_colums
            mid_value = matrix[row][colums]
            if mid_value == target:
                return True
            elif mid_value < target:
                left = mid + 1
            else:
                right = mid - 1

        return False               

        