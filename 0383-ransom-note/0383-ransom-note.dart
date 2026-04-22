class Solution {
  bool canConstruct(String ransomNote, String magazine) {
      
     Map<String, int> resultMap = {};

     for(String char in magazine.split("")) {
        resultMap[char] = (resultMap[char] ?? 0) + 1;
     }

     for(String char in ransomNote.split("")) {
        resultMap[char] = (resultMap[char] ?? 0) - 1;
        if(resultMap[char]! < 0) return false;
     }

     return true;
}}