class Solution {
   
  List<int> topKFrequent(List<int> nums, int k) {
    Map<int, int> mapFreq = {};

    for (int num in nums) {
        mapFreq[num] = (mapFreq[num] ?? 0) + 1;
    }

    return (mapFreq.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value)))
    .take(k)
    .map((entry) => entry.key)
    .toList();
  }
}