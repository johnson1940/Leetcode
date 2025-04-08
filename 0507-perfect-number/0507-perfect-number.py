class Solution:
    def checkPerfectNumber(self, num: int) -> bool:
        if num <= 1:
            return False

        sum_of_divisors = 1

        for i in range(2, int(math.sqrt(num)) + 1):
          if num % i == 0:
            sum_of_divisors += i
            other_divisor = num // i
            if i != other_divisor:
                sum_of_divisors += other_divisor

        return sum_of_divisors == num   

        