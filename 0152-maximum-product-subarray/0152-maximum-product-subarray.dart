class Solution {
  int maxProduct(List<int> nums) {
     
     int current_min = nums[0];
     int current_max = nums[0];
     int result = nums[0];

     for(int i = 1 ; i < nums.length ; i++) {
       int temp = nums[i] * current_max;
       current_max = max(nums[i], max(nums[i] * current_max , nums[i] * current_min));
       current_min = min(nums[i], min(temp , nums[i] * current_min));

       result = max(result, current_max);
     }
    return result; 
  }
}