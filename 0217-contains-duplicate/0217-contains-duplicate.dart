class Solution {
  bool containsDuplicate(List<int> nums) {
       Set<int> numSet = {};

       for(int num in nums) {
          if(numSet.contains(num)) {
            return true;
          }
         numSet.add(num);
    }
    return false;
  }
}