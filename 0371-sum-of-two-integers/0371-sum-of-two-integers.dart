class Solution {
  int getSum(int a, int b) {
    int new_a = 0;
    int new_b = 0;
    while(b != 0) {
        new_a = a^b;
        new_b = (a & b) << 1;
        a = new_a;
        b = new_b;
    }
   return a;
  }
}