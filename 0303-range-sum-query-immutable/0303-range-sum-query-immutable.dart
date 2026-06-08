class NumArray {
  List<int> prefix = [];
  NumArray(List<int> nums) {
    prefix = List.filled(nums.length , 0);
    prefix[0] = nums[0];
    for(int i = 1 ; i < nums.length ; i++) {
        prefix[i] = nums[i] + prefix[i - 1];
    }
  }
  
  int sumRange(int left, int right) {
     if(left == 0) return prefix[right];
     return prefix[right] - prefix[left - 1];
  }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * NumArray obj = NumArray(nums);
 * int param1 = obj.sumRange(left,right);
 */