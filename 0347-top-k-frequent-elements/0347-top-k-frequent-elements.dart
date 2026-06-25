class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
      
      Map<int, int> count = {};

      // Step 1 -> Fill the bucket with size of the input
      List<List<int>> freq = List.generate(nums.length + 1, 
                            (_) => <int>[]);

      // Step 2 -> count the freq of the element
      for(int n in nums) {
         count[n] = (count[n] ?? 0) + 1;
      } 

      // Step 3 -> Fill the bucket
      count.forEach((key, value) {
        freq[value].add(key);
      }); 

      // Step 4 -> Taking the first k elements
      List<int> result = [];

      for(int i = freq.length - 1; i > 0; i--) {
           for(int num in freq[i]) {
              result.add(num);
              if(result.length == k) {
                return result;
              }
           }
      }    
    return [];           
  }
}