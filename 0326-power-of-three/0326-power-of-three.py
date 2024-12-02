class Solution:
    def isPowerOfThree(self, n: int) -> bool:
        # the max value store in integer 2^31 - 1 = 2,147,483,647
        # since 3 ^ 20 exceds that we can value 3 ^ 19 = 1,162,261,467 < 2 ^ 31 - 1
        return n > 0 and 3 ** 19 % n == 0