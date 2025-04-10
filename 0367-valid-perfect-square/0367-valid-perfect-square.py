class Solution:
    def isPerfectSquare(self, num: int) -> bool:
        import math
        if num == 1:
            return True
        actual_num = int(math.sqrt(num))
        return num == actual_num * actual_num
        