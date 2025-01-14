class Solution:
    def fizzBuzz(self, n: int) -> List[str]:
        result = []

        for i in range(1, n+1):
            divisibleBy3 = i % 3 == 0
            divisibleBy5 = i % 5 == 0

            if divisibleBy3 and divisibleBy5:
                result.append('FizzBuzz')
            elif divisibleBy5:
                result.append('Buzz')     
            elif divisibleBy3:
               result.append('Fizz')
            else:
                result.append(str(i))
        return result                   
        