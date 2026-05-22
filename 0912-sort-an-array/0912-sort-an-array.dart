class Solution {
  List<int> sortArray(List<int> nums) {
     if(nums.length <= 1) return nums;
     int mid = nums.length ~/ 2;
     List<int> left = nums.sublist(0, mid);
     List<int> right = nums.sublist(mid);

     List<int> sortedLeft = sortArray(left);
     List<int> sortedRight = sortArray(right);

     return mergeFun(sortedLeft, sortedRight);
  }

   List<int> mergeFun(List<int> left, List<int> right) {
      int i = 0;
      int j = 0;
      List<int> result = [];

      while(i < left.length && j < right.length) {
        if(left[i] <= right[j]) {
           result.add(left[i]);
           i++;
        }
        else {
            result.add(right[j]);
            j++;
        }
      }

    while(i < left.length) {
        result.add(left[i]);
        i++;
    }  
    while(j < right.length) {
        result.add(right[j]);
        j++;
    } 

    return result;
   }
}