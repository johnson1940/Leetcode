class Solution {
  bool isIsomorphic(String s, String t) {
    Map<String, String> mapS = {};
    Map<String, String> mapT = {};

    for(int i = 0 ; i < s.length ; i++) {
        String si = s[i];
        String ti = t[i];

        if(mapS.containsKey(si)) {
            if(mapS[si] != ti) return false;
        } else {
            if(mapT.containsKey(ti)) {
                if(mapT[ti] != si) return false;
            }
        }

        mapS[si] = ti;
        mapT[ti] = si;
    }
    return true;
  }
}