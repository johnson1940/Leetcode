class Solution {
  List<int> runningSum(List<int> nums) {
     List<int> result = List.filled(nums.length, 0);
     result[0] = nums[0];

      for(int i = 1 ; i < nums.length; i++) {
        result[i] = result[i - 1] + nums[i];
      }
    return result;  
  }
}