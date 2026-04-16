class Solution {
  int maxArea(List<int> height) {
    int L = 0;
    int R = height.length - 1;
    int maxWater = 0;

    while (L < R) {
       // water = height * width 
       int water = min(height[L], height[R]) * (R - L);  
       maxWater = max(water, maxWater);
          if (height[L] < height[R]) {
              L++;
          } else {
              R--;
          }
       }
     return maxWater;
   }   
}