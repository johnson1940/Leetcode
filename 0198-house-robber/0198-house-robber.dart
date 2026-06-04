class Solution {
   int rob(List<int> nums) {
      if(nums.isEmpty) return 0;
      if(nums.length == 1) return nums[0];
      List<int> houses = List.filled(nums.length, 0);
      houses[0] = nums[0];
      houses[1] = max(nums[0], nums[1]);

      for(int i = 2 ; i < nums.length ; i++) {
        houses[i] = max(houses[i - 1], nums[i] + houses[i - 2]);
      }
    return houses[nums.length - 1];  
  }
}