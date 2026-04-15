class Solution {
  int majorityElement(List<int> nums) {
     
      Map<int, int> counter = {};
      int result = 0;

      for(int nu in nums) {
        counter[nu] = (counter[nu] ?? 0) + 1;
      }

      counter.forEach((num, count) {
        if(count > nums.length/2) {
          result = num;
        }
      });

      return result;

  }
}