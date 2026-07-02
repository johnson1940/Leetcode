class Solution {
  int maxSubarraySumCircular(List<int> nums) {
      int globalMax = nums[0];
      int globalMin = nums[0];
      int currentMax = 0;
      int currentMin = 0;
      int total = 0;

      for(int num in nums) {
        currentMax = max(currentMax + num, num);
        globalMax = max(globalMax, currentMax);
        currentMin = min(currentMin + num, num);
        globalMin = min(globalMin, currentMin);
        total += num;
      }
    return globalMax > 0 ? max(globalMax, total - globalMin): globalMax;
  }
}