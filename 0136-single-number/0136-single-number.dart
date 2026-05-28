class Solution {
int singleNumber(List<int> nums) {
    int result = 0;
    for(int num in nums) {
        result ^= num;
    }
    return result;

//   Map<int, int> counterMap = {};
//   int result = 0;
  
//   for(int i = 0; i < nums.length ; i++) {
//     counterMap[nums[i]] = (counterMap[nums[i]] ?? 0) + 1;
//   }
  
//    counterMap.forEach((key, value) {
//      if(value == 1) {
//        result = key;
//      }
//    });
  
//     return result;
  }
}