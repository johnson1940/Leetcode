class Solution {
  int majorityElement(List<int> nums) {
        
      Map<int, int> counterMap = {};

      int result = 0;

      for(int n in nums) {
        counterMap[n] = (counterMap[n] ?? 0) + 1;
      }

      counterMap.forEach((key, value) {
         if(value > nums.length / 2) {
            result = key;
         }
      });
    return result;

  }
}