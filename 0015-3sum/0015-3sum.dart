class Solution {
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> result = [];
    nums.sort();

    for(int i = 0 ; i < nums.length - 2 ; i++) {

        if (i > 0 && nums[i] == nums[i-1]) continue;
        
        int left_pointer = i + 1;
        int right_pointer = nums.length - 1;

        while(left_pointer < right_pointer) {
            int sum = nums[i] + nums[left_pointer] + nums[right_pointer];

            if(sum == 0) {
                result.add([nums[i], nums[left_pointer], nums[right_pointer]]);
                left_pointer++;
                right_pointer--;

                while (left_pointer < right_pointer &&
                    nums[left_pointer] == nums[left_pointer - 1]) {
                      left_pointer++;
              }

                 while (left_pointer < right_pointer &&
                   nums[right_pointer] == nums[right_pointer + 1]) {
                     right_pointer--;
                 }
            }
            else if(sum > 0) {
                right_pointer--;
            }
            else {
                left_pointer++;
            }
        }

    }
    return result;
    
  }
}