class Solution:
    def maxProfit(self, prices: List[int]) -> int:

        min_price = 10000000
        max_profit = 0

        for price in prices:
            if price < min_price:
               min_price = price
            else:
                price = price - min_price
                if price > max_profit:
                    max_profit = price
        return max_profit               
        