class Solution {
  double findMaxAverage(List<int> nums, int k) {

       int window = 0;

       for(int i = 0; i < k ; i++) {
           window += nums[i];
       }

       int maximumWindow = window;

       for(int i = k ; i < nums.length ; i++) {
          window += nums[i];
          window -= nums[i - k];
          maximumWindow = max(window, maximumWindow);
       }
    
    return maximumWindow/k;
       
  }
}