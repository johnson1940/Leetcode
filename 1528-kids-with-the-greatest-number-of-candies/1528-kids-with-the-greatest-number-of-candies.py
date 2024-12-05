class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
        max_element = max(candies)
        for i in range(len(candies)):
            candies[i] = candies[i] + extraCandies
            if candies[i] >= max_element:
                candies[i] = True
            else:
                candies[i] = False
        return candies            
        