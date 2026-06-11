class Solution {
  int findMaxLength(List<int> nums) {
      int prefixSum = 0;
      int maxLength = 0;
      Map<int, int> firstOccurrence = {0: -1};

      for(int i = 0; i < nums.length ; i++) {
         prefixSum += nums[i] == 0 ? -1 : 1;
         if(firstOccurrence.containsKey(prefixSum)) {
            maxLength = max(maxLength, i - firstOccurrence[prefixSum]!);
        }
        else {
           firstOccurrence[prefixSum] = i; 
        }
      }
    return maxLength;  
  }
}