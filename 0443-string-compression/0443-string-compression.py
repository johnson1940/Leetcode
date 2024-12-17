class Solution:
    def compress(self, chars: List[str]) -> int:
        move_right = 0
        count = 1 
        for i in range(len(chars)):
            if i < len(chars) - 1 and chars[i] == chars[i + 1]:
                count += 1
            else:
                chars[move_right] = chars[i]
                move_right += 1

                if count > 1:
                   for digit in str(count):
                       chars[move_right] = digit
                       move_right += 1

                count = 1    

        return len(chars[:move_right])         

            
        