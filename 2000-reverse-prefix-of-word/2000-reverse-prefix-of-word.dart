class Solution {
  String reversePrefix(String word, String ch) {
     
     List<String> chars = word.split("");

     for(int right = 0 ; right < chars.length ; right++) {
        if(chars[right] == ch) {
            int left = 0;
            while(left < right) {
                String temp = chars[left];
                chars[left] = chars[right];
                chars[right] = temp;
                left++;
                right--;
            }
         break;
        }
     }
   return chars.join("");   
  }
}