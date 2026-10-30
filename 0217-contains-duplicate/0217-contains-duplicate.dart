class Solution {
  bool containsDuplicate(List<int> nums) {
    final seen = <int>{};
    for(final num in nums){
        if(seen.contains(num)) {
            return true;
        }
        seen.add(num);
    }
    return false;
  }
}