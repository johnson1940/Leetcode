class Solution {
  List<int> productExceptSelf(List<int> nums) {

    int n = nums.length;
    int left_prod = 1;
    int right_prod = 1;
    List<int> result = List<int>.filled(n, 1);

    for(int i = 0; i < n ; i++) {
        result[i] = left_prod;
        left_prod *= nums[i];
    }

    for(int i = n - 1 ; i >= 0 ; i--) {
        result[i] *= right_prod;
        right_prod *= nums[i];
    }
    

    return result;
  }
}