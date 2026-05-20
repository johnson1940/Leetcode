class Solution {
  int pivotIndex(List<int> nums) {
     List<int> result = List.filled(nums.length , 0);
     result[0] = nums[0];
     for(int i = 1 ; i < nums.length ; i++) {
        result[i] = result[i - 1] + nums[i];
     }
      
     int total = result[result.length - 1];
     for(int i = 0 ; i < result.length ; i++) {
        int leftSum = (i == 0) ? 0 : result[i - 1];
        int rightSum = total - result[i];

        if(leftSum == rightSum) {
            return i;
        }
     } 
    return -1;  
  }
}