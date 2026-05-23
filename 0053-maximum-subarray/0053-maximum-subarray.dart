class Solution {
  int maxSubArray(List<int> nums) {
      int maxSum = nums[0];
      int currentSum = nums[0];
      for(int i = 1 ; i < nums.length; i++) {
        currentSum = max(nums[i], currentSum + nums[i]);
        maxSum = max(currentSum, maxSum);
      }
    return maxSum;  
  }
}