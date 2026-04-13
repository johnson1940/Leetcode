class Solution {
  bool canConstruct(String ransomNote, String magazine) {
      
    Map<String, int> map = {};

    for(String char in magazine.split("")) {
        map[char] = (map[char] ?? 0) + 1;
    }

    for(String char in ransomNote.split("")) {
        map[char] = (map[char] ?? 0) - 1;
        if((map[char] ?? 0) < 0) return false;
    }

    return true;
  }
}