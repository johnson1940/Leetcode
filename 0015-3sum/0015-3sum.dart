class Solution {
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> result = [];
    nums.sort();
    Set<String> seen = {};

    for(int i = 0 ; i < nums.length - 2 ; i++) {
        int left = i + 1;
        int right = nums.length - 1;

        while(left < right) {
            int sum = nums[i] + nums[left] + nums[right];
            String key = '${nums[i]},${nums[left]},${nums[right]}';
            if(sum == 0) {
                if(!seen.contains(key)) {
                  seen.add(key);
                  result.add([nums[i], nums[left], nums[right]]);
                }
                left++;
                right--;
            }
            else if(sum > 0) {
                right--;
            }
            else {
                left++;
            }
        }
    }
   return result;
  }
}