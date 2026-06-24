class Solution {
  int minSubArrayLen(int target, List<int> nums) {
    
    int left = 0;
    int sum = 0;
    int minLength = nums.length + 1;

     for(int right = 0; right < nums.length ; right++) {
        sum += nums[right];

        while(sum >= target) {
            minLength = min(minLength, (right - left + 1));
            sum -= nums[left];
            left++;
        }
     }
    /// [1,1,1,1,1,1,1,1] t = 11, not meet have to return 0;
    return minLength == nums.length + 1 ? 0 : minLength; 
  }
}