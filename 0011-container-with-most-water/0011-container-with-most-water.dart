class Solution {
  int maxArea(List<int> height) {
  
    int leftWall = 0;
    int rightWall = height.length - 1;
    int maxWater = 0;
  
    while(leftWall < rightWall) {
    
        int area = min(height[leftWall], height[rightWall]) * (rightWall - leftWall);
    
        maxWater = max(area, maxWater);
    
        if(height[leftWall] < height[rightWall]) {
            leftWall++;
        }
        else {
            rightWall--;
        }
    }
  return maxWater;
}  
}