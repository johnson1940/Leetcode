class Solution {
  double findMaxAverage(List<int> nums, int k) {
       int window = 0;

       // step 1 - find first k element sum
       for(int i = 0 ; i < k ; i++) {
          window += nums[i];
       }

       int maxWindow = window;

       for(int i = k ; i < nums.length ; i++) {
           window += nums[i];
           window -= nums[i - k];
           maxWindow = max(maxWindow, window);
       }
    return maxWindow / k;   
  }
}