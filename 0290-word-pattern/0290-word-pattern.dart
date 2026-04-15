class Solution {
  bool wordPattern(String pattern, String s) {
      List<String> words = s.split(" ");
      if (pattern.length != words.length) return false;
      Map<String, String> patternMap = {};
      Map<String, String> sMap = {};

      for(int i = 0; i < pattern.length ; i++) {
          String patternString = pattern[i];
          String word = words[i];

          if(patternMap.containsKey(patternString)) {
            if(patternMap[patternString] != word) return false;
          } else {
            if(sMap.containsKey(word)) {
                if(sMap[word] != patternString) return false;
            }
          }
          patternMap[patternString] = word;
          sMap[word] = patternString;
      }
      return true;
  }
}