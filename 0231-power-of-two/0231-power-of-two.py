class Solution:
    def isPowerOfTwo(self, n: int) -> bool:
        for i in range(31):
            sol = 2 ** i
            if sol == n:
                return True
        return False       
        