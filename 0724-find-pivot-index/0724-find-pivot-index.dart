class Solution {
  int pivotIndex(List<int> nums) {
      int total_sum = 0;
      int left_sum = 0;
      for(int number in nums) total_sum += number;
      for(int i = 0; i < nums.length; i++) {
         int rightSum = total_sum - left_sum - nums[i];
         if(rightSum == left_sum) {
            return i;
         }
        left_sum += nums[i]; 
      }
    return -1;  
  }
    
}