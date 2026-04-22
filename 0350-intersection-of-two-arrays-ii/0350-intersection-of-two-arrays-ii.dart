class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {  
     Map<int, int> freqMap = {};
     List<int> result = [];
   
    for(int n in nums1) {
      freqMap[n] = (freqMap[n] ?? 0) + 1;
    }
  
    for(int n in nums2) {
      if(freqMap.containsKey(n) && (freqMap[n] ?? 0) > 0) {
         result.add(n);
         freqMap[n] = (freqMap[n] ?? 0) - 1;
      }
    }
    
    return result;  
    
  }
}