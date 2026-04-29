class Solution {
  int minEatingSpeed(List<int> piles, int h) {
    int low = 1;
    int high = piles.reduce(max);

    while(low < high) {
        int mid = low + (high - low) ~/ 2;
        if(canFinish(piles, mid, h)) {
            high = mid;
        } else {
            low = mid + 1;
        }
    }
    return low;
  }

  bool canFinish(List<int> piles, int speed, int h) {
    int hours = 0;
    for(int pile in piles) {
        hours += (pile / speed).ceil();
    }
    return hours <= h;
  }
}