class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
      Map<int, int> counterMap = {};
      
      for(int number in nums) {
        counterMap[number] = (counterMap[number] ?? 0) + 1;
      }

      var sortedEntries = counterMap.entries.toList()
        ..sort((a, b) => b.value.compareTo(a.value));

     List<int> result = sortedEntries
      .map((entry) => entry.key)
      .take(k)
      .toList();

    return result;  
  }
}