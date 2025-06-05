class Solution:
    def climbStairs(self, n: int) -> int:
        if n <= 3: return n

        first = 1
        second = 2

        for step in range(3, n+1):
            total = first + second
            first = second
            second = total
        return total    