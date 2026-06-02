class Solution {
   int rob(List<int> nums) {
      if(nums.isEmpty) return 0;
      if(nums.length == 1) return nums[0];
      List<int> dp = List.filled(nums.length, 0);
      dp[0] = nums[0];
      dp[1] = max(nums[0], nums[1]);


      for(int i = 2 ; i < nums.length ; i++) {
        dp[i] = max(dp[i-1], nums[i] + dp[i - 2]);
      }
    return dp[nums.length - 1];
 }
}