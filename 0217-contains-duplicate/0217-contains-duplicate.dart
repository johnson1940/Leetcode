class Solution {
  bool containsDuplicate(List<int> nums) {
       Map<int, int> numsMap = {};

       for(int i = 0 ; i < nums.length ; i++) {
           if(numsMap.containsKey(nums[i])) {
              return true;
           }
           else {
              numsMap[nums[i]] = (numsMap[nums[i]] ?? 0) + 1;
           }
       }
    return false;   
  }
}