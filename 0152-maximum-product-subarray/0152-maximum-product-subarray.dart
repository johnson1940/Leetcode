class Solution {
  int maxProduct(List<int> nums) {
     int max_prod = nums[0];
     int current_prod = nums[0];
     int min_prod = nums[0];
     for(int i = 1; i < nums.length ; i++) {
        int tempMax = current_prod;
        current_prod = max(nums[i], max(nums[i] * current_prod, nums[i] * min_prod));
        min_prod = min(nums[i], min(nums[i] * tempMax, nums[i] * min_prod));
        max_prod = max(current_prod, max_prod);
     }
    return max_prod; 
  }
}