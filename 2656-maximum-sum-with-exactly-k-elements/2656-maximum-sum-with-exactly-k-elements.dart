class Solution {
  int maximizeSum(List<int> nums, int k) {
    //   int maxVal = nums.reduce(max);
    //   return k * maxVal + (k * (k - 1)) ~/ 2;
    int maxVal = nums.reduce(max);
    int highestSum = 0;

    for (int i = 0; i < k; i++) {
       highestSum += maxVal;  
       maxVal++;             
    }

   return highestSum;
     
  }
}