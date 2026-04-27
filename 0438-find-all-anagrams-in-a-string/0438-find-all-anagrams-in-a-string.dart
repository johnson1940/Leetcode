class Solution {
  List<int> findAnagrams(String s, String p) {
    if(p.length > s.length) return []; 
    List<int> result = [];
    Map<String, int> sMap = {};
    Map<String, int> pMap = {};

    /// Building the frequency of first map
    for(int i = 0; i < p.length ; i++) {
        pMap[p[i]]= (pMap[p[i]] ?? 0) + 1;
    }

    /// Building the frequency for the first window
    for(int i = 0; i < p.length ; i++) {
        sMap[s[i]] = (sMap[s[i]] ?? 0) + 1;
    }

    /// Checking the map Equality
    if(mapsEqual(sMap, pMap)) result.add(0);

    
    for(int R = p.length ;  R < s.length ; R++) {
        sMap[s[R]] = (sMap[s[R]] ?? 0) + 1;
        String left = s[R - p.length];
        sMap[left] = (sMap[left] ?? 0) - 1;
        if(sMap[left] == 0) sMap.remove(left);
        if(mapsEqual(sMap, pMap)) result.add(R - p.length + 1);
    }
   return result;
  }

  bool mapsEqual(Map<String, int> a, Map<String, int> b) {
    if (a.length != b.length) return false;
      for (String key in a.keys) {
      if (a[key] != b[key]) return false;
    }
     return true;
  }
}