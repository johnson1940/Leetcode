class Solution {
  List<int> twoSum(List<int> nums, int target) {
     
     Map<int, int> seen = {};

     for(int i = 0 ; i < nums.length ; i++) {
         int comp = target - nums[i];
         if(seen.containsKey(comp)) {
            return [seen[comp]!, i];
         }
        seen[nums[i]] = i;
     }
    return []; 
  }
}