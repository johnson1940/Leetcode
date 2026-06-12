class Solution {
  List<int> sortedSquares(List<int> nums) { 
    List<int> squareList = List.filled(nums.length, 0);
    int left = 0;
    int right = nums.length - 1;

    for(int i = nums.length - 1; i >= 0; i--) {
        int leftSquare = nums[left] * nums[left];
        int rightSquare = nums[right] * nums[right];

        if(leftSquare > rightSquare) {
            squareList[i] = leftSquare;
            left++;
        }
        else {
            squareList[i] = rightSquare;
            right--;
        }
    }
    return squareList;
  }
      
}