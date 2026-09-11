class Solution {
  List<int> findAnagrams(String s, String p) {
      List<int> result = [];

      if(p.length > s.length) return result;

      List<int> sCount = List.filled(26, 0);;
      List<int> pCount = List.filled(26, 0);;

      int aCode = 'a'.codeUnitAt(0);

      for(int i = 0; i < p.length ; i++) {
          pCount[p.codeUnitAt(i) - aCode]++;
          sCount[s.codeUnitAt(i) - aCode]++;
      }
      
      if(_listsEqual(pCount, sCount)) {
         result.add(0);
      }

      for(int i = p.length; i < s.length; i++) {

        sCount[s.codeUnitAt(i) - aCode]++;

        sCount[s.codeUnitAt(i - p.length) - aCode]--;

        if(_listsEqual(pCount, sCount)) {
            result.add(i - p.length + 1);
        }
    }
   return result;
  }

  bool _listsEqual(List<int> a, List<int> b) {
       for (int i = 0; i < 26; i++) {
          if (a[i] != b[i]) return false;
       }
    return true;
  }
}