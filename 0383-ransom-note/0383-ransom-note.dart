class Solution {
  bool canConstruct(String ransomNote, String magazine) {
       Map<String, int> wordMap = {};
       for(String char in magazine.split("")) {
          wordMap[char] = (wordMap[char] ?? 0) + 1;
       }
       for(String char in ransomNote.split("")) {
          wordMap[char] = (wordMap[char] ?? 0) - 1;
          if(wordMap[char]! < 0) return false;
       }
    return true;
}}