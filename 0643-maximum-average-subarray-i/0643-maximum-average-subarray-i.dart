class Solution {
  double findMaxAverage(List<int> nums, int k) {
        int windowSum = 0;

        for(int i = 0; i < k ; i++) {
            windowSum += nums[i];
        }

        int maxWindowSum = windowSum;

        for(int i = k ; i < nums.length ; i++) {
            windowSum += nums[i];
            windowSum -= nums[i - k];
            maxWindowSum = max(windowSum, maxWindowSum);
        }
    return maxWindowSum / k;    
  }
}