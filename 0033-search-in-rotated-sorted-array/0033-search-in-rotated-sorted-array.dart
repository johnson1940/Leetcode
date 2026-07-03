class Solution {
  int search(List<int> nums, int target) {
    int left = 0;
    int right = nums.length - 1;

    while(left <= right) {

        int mid = (left + right) ~/ 2;

        if(nums[mid] == target) return mid;

        bool isLeftSorted = nums[left] <= nums[mid];
        if(isLeftSorted) {
           bool isTargetLeft = target >= nums[left] && target < nums[mid];
           if(isTargetLeft) right = mid - 1;
           else left = mid + 1;
        }
        else {
            bool isTargetRight = target > nums[mid] && target <= nums[right];
            if(isTargetRight) left = mid + 1;
            else right = mid - 1;
        }
    }
    return -1;
  }
}