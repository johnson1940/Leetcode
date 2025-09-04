class Solution:
    def flipAndInvertImage(self, image: List[List[int]]) -> List[List[int]]:
        result = []
        for i in image:
            reverse = []
            for num in i:
                if num == 0:
                    num = 1
                else:
                    num = 0 
                reverse.append(num)
            reverse = reverse[::-1]    
            result.append(reverse)
        return result        


                      