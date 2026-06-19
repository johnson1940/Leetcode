class Solution {
  int trap(List<int> height) {
      int left = 0;
      int right = height.length - 1;
      int result = 0;
      int leftMax = height[left];
      int rightMax = height[right];

      while(left < right) {
           if(leftMax < rightMax) {
              left++;
              leftMax = max(leftMax, height[left]);
              result += leftMax - height[left];
           }
           else {
              right--;
              rightMax = max(rightMax , height[right]);
              result += rightMax - height[right];
           }
      }
    return result;  
    
  }
}