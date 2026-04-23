class Solution {
  void rotate(List<int> nums, int k) {
    
    // nums = [1,2,3]  n=3

    // rotate 3 times → [1,2,3]  ← same as start!
    // rotate 4 times → [3,1,2]  ← same as rotating 1 time
    // rotate 6 times → [1,2,3]  ← same as rotating 0 times
    k = k % nums.length;
    int start = 0;
    int end = nums.length - 1;

    // reversing the entire array
    reverse(nums, start, end);

    // reversing the first k elements
    reverse(nums, start, k-1);

    // reversing the n-k elements
    reverse(nums, k , end);
 }

  void reverse(List<int> nums, int start, int end) {
    while(start < end) {
    int temp = nums[start];
    nums[start] = nums[end];
    nums[end] = temp;
    start++;
    end--;
   }
  }
}