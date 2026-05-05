class Solution {
  List<int> smallerNumbersThanCurrent(List<int> nums) {
  List<int> result = [];
  
  for(int i = 0; i < nums.length ; i++) {
    int count=0;
    for(int j = 0; j < nums.length ; j++) {
      if(nums[j] < nums[i]) {
         count++;  
      }
    }
   result.add(count);
  }
  return result;
  }
}