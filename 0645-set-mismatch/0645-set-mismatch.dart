class Solution {
  List<int> findErrorNums(List<int> nums) {
    Map<int, int> freqMap = {};
    List<int> result = [];

    for(int num in nums) {
        freqMap[num] = (freqMap[num] ?? 0) + 1;
    }

    freqMap.forEach((key, value) {
        if(value > 1) {
            result.add(key);
        }
    });

    for (int i = 1; i <= nums.length; i++) {
    if (!freqMap.containsKey(i)) {
      result.add(i);
      }
    }
    return result;
  }
}