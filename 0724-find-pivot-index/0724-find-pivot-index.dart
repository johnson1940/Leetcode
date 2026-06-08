class Solution {
  int pivotIndex(List<int> nums) {
     List<int> prefix = List.filled(nums.length, 0);
     prefix[0] = nums[0];
     int totalSum = 0;
     int leftSum = 0;
     for(int number in nums) {
        totalSum += number;
     }

     for(int i = 0 ; i < nums.length ; i++) {
        int rightSum = totalSum - leftSum - nums[i];
        if(rightSum == leftSum) {
            return i;
        }
      leftSum += nums[i];  
     }
    return -1; 
  }
}