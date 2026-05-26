class Solution {
  int firstUniqChar(String s) {
    
    Map<String, int> countingMap = {};
    List<String> char = s.split("");

    for(int i = 0; i < char.length ; i++) {
        countingMap[char[i]] = (countingMap[char[i]] ?? 0) + 1;
    }

    for(int i = 0 ; i < char.length ; i++) {
        if(countingMap[char[i]] == 1) {
            return i;
        }
    }
   return -1; 
  }
}