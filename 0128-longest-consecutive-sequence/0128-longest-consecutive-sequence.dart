class Solution {
   int longestConsecutive(List<int> nums) {
      if (nums.isEmpty) return 0;

      nums.sort();

       int longest = 1;
       int current = 1;

  for (int i = 1; i < nums.length; i++) {
    if (nums[i] == nums[i - 1]) {
      continue; // ignore duplicates
    } else if (nums[i] == nums[i - 1] + 1) {
      current++;
    } else {
      longest = longest > current ? longest : current;
      current = 1;
    }
  }

  return longest > current ? longest : current;
}
}