class Solution {
  int removeDuplicates(List<int> nums) {
      if(nums.isEmpty) return 0;

      int slow = 1;

      for(int fast = 1; fast < nums.length; fast++)  {
          if(nums[fast] != nums[slow - 1]) {
             nums[slow] = nums[fast];
             slow++;
          }
      }
    return slow;  
  }
}