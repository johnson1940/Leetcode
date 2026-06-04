class Solution {
  int pivotIndex(List<int> nums) {
    int left_sum = 0;
    int total_sum = 0;
    for(int nu in nums) total_sum += nu;
    for(int i = 0; i < nums.length ; i++) {
        int right_sum = total_sum - left_sum - nums[i];
        if(left_sum == right_sum) {
            return i;
        }
    left_sum += nums[i];
    }
    return -1;
  }
    
}