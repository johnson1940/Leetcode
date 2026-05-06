class Solution {
  List<String> buildArray(List<int> target, int n) {
    List<String> stackResult = [];
    int targetIndex = 0;
    for(int i = 1; i <= n ; i++) {
        if(targetIndex == target.length) break;
        if(i == target[targetIndex]) {
            stackResult.add("Push");
            targetIndex++;
        } else {
            stackResult.add("Push");
            stackResult.add("Pop");
        }
    }
    return stackResult;
  }
}