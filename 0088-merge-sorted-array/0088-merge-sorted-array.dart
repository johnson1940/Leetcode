class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {

       // step 1
       int p1 = m - 1;
       int p2 = n - 1;
       int p = m+n-1;
       
       while(p2 >= 0) {
          // step 2
          if(p1 >= 0 && nums1[p1] > nums2[p2]) {
             nums1[p] = nums1[p1];
             p1--;
          }
          // step 3
          else {
            nums1[p] = nums2[p2];
            p2--;
          }
          p--;
       }
        
        
        // works but this is not optimal 
        // List<int> result = [];
        
        // nums1.removeWhere((num) {
        //    if (num == 0 && n > 0) {
        //        n--;
        //        return true;
        //      }
        //     return false;
        // });

        // for(int i = 0 ; i < nums2.length ; i++) {
        //     nums1.add(nums2[i]);
        // }
        // nums1.sort();

  }
}