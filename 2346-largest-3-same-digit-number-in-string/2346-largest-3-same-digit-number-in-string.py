class Solution:
    def largestGoodInteger(self, num: str) -> str:
        good_integer = []
        for i in range(len(num) - 2):
            triplet = num[i:i+3] 
            if triplet[0] == triplet[1] == triplet[2]:
                good_integer.append(triplet)
        return max(good_integer) if good_integer else ''
        