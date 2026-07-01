class Solution {
  int maxProduct(List<int> nums) {
     
     int current_min = 1;
     int current_max = 1;
     int result = nums.reduce(max);

     for(int n in nums) {
        if(n == 0) {
            current_min = 1;
            current_max = 1;
            continue;
        }
       int temp = n * current_max;
       current_max = max(n, max(n * current_max , n * current_min));
       current_min = min(n, min(temp , n * current_min));

       result = max(result, current_max);
     }
    return result; 
  }
}