class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    
    Set<int> seen = nums.toSet();

    List<int> result = [];

    for(int i = 1 ; i <= nums.length ; i++) {
        if(!seen.contains(i)) {
            result.add(i);
        }
    }
    return result;
  }
}