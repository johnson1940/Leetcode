class Solution {
   int longestConsecutive(List<int> nums) {
        
        Set<int> numSet = nums.toSet();

        int longest = 0;

        for(int n in nums) {

            if(!numSet.contains(n-1)) {

                int current_length = 0;

                while(numSet.contains(n + current_length)) {
                    current_length ++;
                }

                longest = max(current_length, longest);
            }
        }
    return longest;    
  }
}