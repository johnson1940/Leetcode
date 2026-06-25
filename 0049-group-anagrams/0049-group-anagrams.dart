class Solution {
  /// o(m * (n logn))
//   List<List<String>> groupAnagrams(List<String> strs) {
//     Map<String , List<String>> map = {};

//     for(String word in strs) {
//        String key = (word.split('')..sort()).join('');
//        map[key] ??= [];
//        map[key]!.add(word);
//     }
//     return map.values.toList();
//   }


   List<List<String>> groupAnagrams(List<String> strs) {
        Map<String, List<String>> map = {};

        for(String s in strs) {

            List<int> count = List.filled(26, 0);

            for(int i = 0 ; i < s.length ; i++) {
                count[s.codeUnitAt(i) - 97] += 1;
            }
          String key = count.join(',');
          map.putIfAbsent(key, () => []).add(s);  
        }
    return map.values.toList();    
   }
}