class Solution {
  int characterReplacement(String s, int k) {
     Map<String , int> count = {};
     int left = 0;
     int result =  0;

     for(int right = 0 ; right < s.length ; right++) {
         
         count[s[right]] = (count[s[right]] ??  0) + 1;

         if((right - left + 1) - count.values.reduce(max) > k) {
             
             count[s[left]] = (count[s[left]] ?? 0) - 1;

             left++;
         }
        result = max(result ,right - left + 1); 
     }
    return result; 
  }
}