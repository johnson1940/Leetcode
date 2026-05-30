class Solution {
  String reverseVowels(String s) {
    // IceCreAm
    // AceCreIm
    int left = 0;
    int right = s.length - 1;
    List<String> str = s.split("");
    while(left < right) {
        if(isVowel(str[left]) && isVowel(str[right])) {
            String temp = str[left];
            str[left] = str[right];
            str[right] = temp;
            left++;
            right--;
        }
        else if(isVowel(str[left]) && !isVowel(str[right])) {
            right--;
        }
        else if(!isVowel(str[left]) && isVowel(str[right])) {
            left++;
        }
        else{
            left++;
            right--;
        }
        
    }

    return str.join("");
  }

  bool isVowel(String s) {
    return s == 'a' || s == 'e' || s == 'i' || s == 'o' || s == 'u' ||
    s == 'A' || s == 'E' || s == 'I' || s== 'O' || s == 'U';
  }
}