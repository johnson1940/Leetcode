class Solution {
  int subarraySum(List<int> nums, int k) {
     Map<int , int> counterMap = {0:1};
     int count = 0;
     int prefixSum = 0;

     for(int num in nums) {
        prefixSum += num;
        int need = prefixSum - k;

        if(counterMap.containsKey(need)) {
            count += counterMap[need]!;
        }
       counterMap[prefixSum] = (counterMap[prefixSum] ?? 0) + 1; 
     }
    return count; 
  }
}