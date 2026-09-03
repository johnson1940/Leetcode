class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
      
      Map<int, int> freqMap = {};

      for(int num in nums) {
         freqMap[num] = (freqMap[num] ?? 0) + 1;
      }

      List<List<int>> bucket = List.generate(nums.length + 1, (_) => []);

      freqMap.forEach((num, freq) {
         bucket[freq].add(num);
      });

      List<int> result = [];

      for(int i = bucket.length - 1 ; i >= 0 ; i--) {
          for(int num in bucket[i]) {
            result.add(num);
            if(result.length == k) return result;
          }
      }
    return result;     
  }
}