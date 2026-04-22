class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    
    Set<int> numsSet = nums1.toSet();
    List<int> result = [];

    for(int num in nums2) {
        if(numsSet.contains(num)) {
            result.add(num);
            numsSet.remove(num);
        }
    }
    return result;
  }
}