class Solution {
  int maxVowels(String s, int k) {
    
  List<String> str = s.split("");
  
  int max_count = 0;
  int count = 0;

  for(int i = 0 ; i < k ; i++) {
    if(isVowel(str[i])) count++;
  } 

  max_count = count;

  for(int right = k ; right < s.length ; right++) {
    if(isVowel(str[right])) count++;
    if(isVowel(str[right - k])) count--;

    max_count = max(max_count, count);
    }
  
 return max_count;
}

 bool isVowel(String s) {
    return s == 'a' || s == 'i' || s == 'o' || s == 'u' || s == 'e';
  }
}