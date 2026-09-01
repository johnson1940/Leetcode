class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
      Map<String, List<String>> map = {};

      for(String s in strs) {
         
         List<int> count = List.filled(26, 0);

         for(int i = 0; i < s.length ; i++) {
             count[s.codeUnitAt(i) - 97] += 1;
         }

         String key = count.join(',');

         map.putIfAbsent(key, () => []).add(s);
      }
    return map.values.toList();  
  }
}