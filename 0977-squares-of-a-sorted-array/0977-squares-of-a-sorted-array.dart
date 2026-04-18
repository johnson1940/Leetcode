class Solution {
  List<int> sortedSquares(List<int> nums) {
     int L = 0;
     int R = nums.length - 1;
     int Pos = nums.length - 1;
     List<int> result = List.filled(nums.length, 0);

     while(L <= R) {
        int leftSq = nums[L] * nums[L];
        int rightSq = nums[R] * nums[R];

        if(leftSq > rightSq) {
            result[Pos] = leftSq;
            L++;
        } else {
            result[Pos] = rightSq;
            R--;
        }
        Pos--;
     }
     return result;
  }
}