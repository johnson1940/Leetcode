class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        integer = int("".join(map(str, digits)))
        integer += 1
        lst = [int(digit) for digit in str(integer)]
        return lst

         


        