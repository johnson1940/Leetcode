class Solution {
  bool containsDuplicate(List<int> nums) {
       Map<int, int> numMap = {};

       for(int i = 0 ; i < nums.length ; i++) {
         if(numMap.containsKey(nums[i])) {
            return true;
         }
         else {
            numMap[nums[i]] = (numMap[nums[i]] ?? 0) + 1;
         }
       }
    return false;
  }
}