class Solution {
  int maxProfit(List<int> prices) {
      int buyPrice = prices[0];
      int profit = 0;

      for(int i = 1; i < prices.length ; i++) {
           
           if(buyPrice > prices[i]) {
              /// set the buy prices low so that we may get the max profit
              buyPrice = prices[i];
           }
        profit = max(profit, prices[i]-buyPrice);   
      }
    return profit;
  }
} 