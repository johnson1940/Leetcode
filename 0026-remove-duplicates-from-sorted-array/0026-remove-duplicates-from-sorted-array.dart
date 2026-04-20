class Solution {
  int removeDuplicates(List<int> nums) {
      int fast = 0;
      int slow = 0;
      while(fast < nums.length) {
        if(nums[fast] != nums[slow]) {
            slow++;
            nums[slow] = nums[fast];
        }
        fast++;
      }
      return slow+1;
  }
}