class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
    if(nums.length == 1) return [nums[0]];
    Map<int, int> freqMap = {};
    List<int> result = [];

    for(int i = 0; i < nums.length ; i++) {
       freqMap[nums[i]] = (freqMap[nums[i]] ?? 0) + 1;
    }

    List<int> keys = freqMap.keys.toList()
    ..sort((a, b) => freqMap[b]!.compareTo(freqMap[a]!));

    return keys.take(k).toList();
  }
}