class Solution {
  int maxNumberOfBalloons(String text) {
      Map<String, int> countMap = {};

      for(String ch in text.split("")) {
        countMap[ch] = (countMap[ch] ?? 0) + 1;
      }

    return [
     countMap['b'] ?? 0,
     countMap['a'] ?? 0,
     (countMap['l'] ?? 0) ~/ 2,
     (countMap['o'] ?? 0) ~/ 2,
     countMap['n'] ?? 0,
    ].reduce((a, b) => a < b ? a : b);
  }
}