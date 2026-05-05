class Solution {
  int findMaxConsecutiveOnes(List<int> nums) {
      int current = 0;
      int max_count = 0;

      for(int num in nums) {
        if(num == 1) {
            current++;
            max_count = max(max_count, current);
        }
        else {
            current = 0;
        }
      }
    return max_count;  
  }
}