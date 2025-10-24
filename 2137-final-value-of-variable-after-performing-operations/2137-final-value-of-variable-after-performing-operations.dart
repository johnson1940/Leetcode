class Solution {
  int finalValueAfterOperations(List<String> operations) {
     int x = 0;
     for(int i = 0 ; i < operations.length; i ++) {
        if(operations[i].contains('--')) {
            x = x - 1;
        }
        else {
            x = x + 1;
        }
     }
    return x;
  }
}