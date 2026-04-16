class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    int left_pointer = 0;
    int right_pointer = numbers.length - 1;
    List<int> result = [];
     
     while(left_pointer < right_pointer) {
        int sum = numbers[left_pointer] + numbers[right_pointer];
        if(sum == target) {
            return [left_pointer+1, right_pointer+1];
        }
        else if(sum > target) {
            right_pointer--;
        }
        else {
            left_pointer++;
        }
     }
     return [];

  }
}