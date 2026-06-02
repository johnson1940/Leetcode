class Solution {
   int minCostClimbingStairs(List<int> cost) {
      List<int> dp = List.filled(cost.length, 0);
      dp[0] = cost[0];
      dp[1] = cost[1];
      for(int i = 2 ; i < cost.length ; i++) {
         dp[i] = cost[i] + min(dp[i - 1], dp[i - 2]);
      }
     return min(dp[cost.length - 1], dp[cost.length - 2]);
   }
}