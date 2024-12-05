class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        min_price = prices[0]  # Start with first
        max_profit = 0
        
        for price in prices:
            # Update min_price if we find a smaller value
            if price < min_price:
                min_price = price
            else:
                # Calculate potential profit and update max_profit if it's larger
                max_profit = max(max_profit, price - min_price)
        
        return max_profit
            
        
        