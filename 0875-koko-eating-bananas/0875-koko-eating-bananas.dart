class Solution {
  int minEatingSpeed(List<int> piles, int h) {
      int left = 1;
      int right = piles.reduce(max);
      int result = right;
      int k = 0;

      while(left <= right) {
         k = (left + right) ~/ 2;
         int hours = 0;
         for(int p in piles) {
            hours += (p / k).ceil();
         }
         if(hours <= h) {
            result = min(result, k);
            right = k - 1;
         }
         else {
            left = k + 1;
         }
      }
    return result;
  }
}