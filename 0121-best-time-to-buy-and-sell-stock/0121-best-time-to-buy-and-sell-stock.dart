class Solution {
  int maxProfit(List<int> prices) {
     int min_buy_price = prices[0];
     int max_profit = 0;

     for(int i = 1 ; i < prices.length ; i++) {
        if(prices[i] < min_buy_price) {
            min_buy_price = prices[i];
        }
       max_profit = max(max_profit, prices[i] - min_buy_price);
     }
   return max_profit;  
  }
}