class Solution {
  int removeDuplicates(List<int> nums) {
      int fast = 0;
      int slow = 0;

      while(fast < nums.length) {
        if(slow < 2 || nums[fast] != nums[slow - 2]) {
            nums[slow] = nums[fast];
            slow++;
        }
        fast++;
      }
    return slow;
  }
}