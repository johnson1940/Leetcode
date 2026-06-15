class Solution {
  int maxSubArray(List<int> nums) {
      int maxSum = nums[0];
      int currentSum = 0;
      
      for(int number in nums) {
        if(currentSum < 0) {
            currentSum = 0;
        }
       currentSum += number;
       maxSum = max(currentSum, maxSum); 
      }
    return maxSum;  
  }
}