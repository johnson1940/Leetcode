class Solution {
  List<int> getConcatenation(List<int> nums) {
    List<int> result = [];
    result = [...nums, ...nums];
    return result;
  }
}