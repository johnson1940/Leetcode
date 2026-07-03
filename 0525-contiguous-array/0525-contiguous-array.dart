class Solution {
  int findMaxLength(List<int> nums) {
      int sum = 0;
      int maxLength = 0;

      Map<int, int> counterMap = {0 : -1};

      for(int i = 0; i < nums.length ; i++) {
         if(nums[i] == 0) nums[i] = -1;
         else nums[i] = 1;

         sum += nums[i];

         if(counterMap.containsKey(sum)) {
            maxLength = max(maxLength, i - counterMap[sum]!);
         }
         else {
            counterMap[sum] = i;
         }
      }
    return maxLength;  
  }
}