class Solution {
  bool detectCapitalUse(String word) {
      if(word == word.toUpperCase()) return true;
      else if(word == word.toLowerCase()) return true;
      else if(word[0] == word[0].toUpperCase() && 
      word.substring(1, word.length) == word.substring(1, word.length).toLowerCase()) return true;
      else return false;
  }
}