class Solution {
   
  List<int> topKFrequent(List<int> nums, int k) {
    Map<int, int> mapFreq = {};

    for (int num in nums) {
        mapFreq[num] = (mapFreq[num] ?? 0) + 1;
    }

    List<List<int>> bucket = List.generate(nums.length + 1, (_) => []);

    for(var entry in mapFreq.entries) {
        bucket[entry.value].add(entry.key);
    }

    List<int> result = [];

    for(int i = bucket.length - 1; i > 0 ; i--) {
        for(int num in bucket[i]) {
            result.add(num);
            if(result.length == k) return result;
        }
    }

    return result;
  }
}