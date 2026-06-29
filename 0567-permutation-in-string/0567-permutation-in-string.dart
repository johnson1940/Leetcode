class Solution {
  bool checkInclusion(String s1, String s2) {

     if(s1.length > s2.length) return false;  
       
     List<int> s1Freq = List.filled(26, 0);
     List<int> s2Freq = List.filled(26, 0);

     for(int i = 0 ; i < s1.length ; i++) {
        s1Freq[s1.codeUnitAt(i) - 97]++;
        s2Freq[s2.codeUnitAt(i) - 97]++;
     }

     if(arraysEqual(s1Freq, s2Freq)) return true;

     for(int right = s1.length ; right < s2.length ; right++) {
        s2Freq[s2.codeUnitAt(right) - 97]++;
        s2Freq[s2.codeUnitAt(right - s1.length) - 97]--;
        if(arraysEqual(s1Freq, s2Freq)) return true;
     }

    return false;
  }

  bool arraysEqual(List<int> a, List<int> b) {
     for(int i = 0; i < 26; i++) {
        if(a[i] != b[i]) return false;
      }
    return true;
  }

}

