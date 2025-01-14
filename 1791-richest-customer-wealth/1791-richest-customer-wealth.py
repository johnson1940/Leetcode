class Solution:
    def maximumWealth(self, accounts: List[List[int]]) -> int:
        max_wealth = 0
        for customer in accounts:
            current_wealth = 0
            for bank in customer:
                current_wealth += bank
            max_wealth = max(current_wealth, max_wealth)
        return max_wealth        
        