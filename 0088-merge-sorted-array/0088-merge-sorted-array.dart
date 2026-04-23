class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
        List<int> result = [];
        
        nums1.removeWhere((num) {
           if (num == 0 && n > 0) {
               n--;
               return true;
             }
            return false;
        });

        for(int i = 0 ; i < nums2.length ; i++) {
            nums1.add(nums2[i]);
        }
        nums1.sort();

  }
}