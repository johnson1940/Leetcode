class Solution {
  int maxProfit(List<int> prices) {
    int buy_price = prices[0];
    int profit = 0;
    for(int i = 1;  i < prices.length ; i++) {
        if(prices[i] < buy_price) buy_price = prices[i];
         profit = max(profit, prices[i] - buy_price);    
    }
   return profit;
  }
} 