class Solution {
  bool wordPattern(String pattern, String s) {
       List<String> words = s.split(" ");

       if(words.length != pattern.length) return false;

       Map<String, int> charIndex = {};
       Map<String, int> wordIndex = {};

       for(int i = 0 ; i < pattern.length ; i++) {
           
           if(charIndex[pattern[i]] != wordIndex[words[i]]) return false;

           charIndex[pattern[i]] = i;
           wordIndex[words[i]] = i;
       }
    return true;   
  }
}