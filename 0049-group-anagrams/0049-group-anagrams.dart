class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String , List<String>> map = {};

    for(String word in strs) {
       String key = (word.split('')..sort()).join('');
       map[key] ??= [];
       map[key]!.add(word);
    }
    return map.values.toList();
  }
}