class Solution {
  List<int> rearrangeArray(List<int> nums) {
     List<int> positiveInt = [];
     List<int> negativeInt = [];

     List<int> result = List.filled(nums.length, 0);
     for(int i = 0; i < nums.length ; i++) {
        if(nums[i] > 0) positiveInt.add(nums[i]);
        else negativeInt.add(nums[i]);
     }

     for(int i = 0 ; i < positiveInt.length; i++) {
        result[2 * i] = positiveInt[i];
        result[2 * i + 1] = negativeInt[i];
     }
   
   return result;
  }
}