class Solution {
  bool checkInclusion(String s1, String s2) {

     if(s1.length > s2.length) return false;  
     // step 1, create two maps to find the frequency

     Map<String, int> freqMap1 = {};
     Map<String, int> freqMap2 = {};

     /// step 2, have a frequency map of s1 and s2
    
    for(int i = 0; i < s1.length; i++) {
        freqMap1[s1[i]] = (freqMap1[s1[i]] ?? 0) + 1;
    }

    for(int i = 0; i < s1.length ; i++) {
        freqMap2[s2[i]] = (freqMap2[s2[i]] ?? 0) + 1;
    }
   
    /// step 2 Is to compare the two maps;
    if(mapsEqual(freqMap1, freqMap2)) return true;

    /// step 3 if it is not equals then I have to slide the window.

    for(int R = s1.length; R < s2.length ; R++) {
        freqMap2[s2[R]] = (freqMap2[s2[R]] ?? 0) + 1;

        String left = s2[R - s1.length];
        
        /// removing the sliden character.
        freqMap2[left] = (freqMap2[left] ?? 0) - 1;
        if(freqMap2[left] == 0) freqMap2.remove(left);

        if(mapsEqual(freqMap1, freqMap2)) return true;

    }

    return false;
  }


  /// since mapsEqual method is not allowed we are processing with our own method
  bool mapsEqual(Map<String, int> a, Map<String, int> b) {
  if (a.length != b.length) return false;
  for (String key in a.keys) {
    if (a[key] != b[key]) return false;
  }
  return true;
 }
}