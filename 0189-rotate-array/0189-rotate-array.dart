class Solution {
  void rotate(List<int> nums, int k) {
       k = k % nums.length;
       int left = 0;
       int right = nums.length - 1;
       reverse(nums, left, right);
       reverse(nums, left , k - 1);
       reverse(nums, k , right);
   }


   void reverse(List<int> nums, int left, int right) {
       while(left < right) {
           int temp = nums[left];
           nums[left] = nums[right];
           nums[right] = temp;
           left++;
           right--;
       }
   }
}