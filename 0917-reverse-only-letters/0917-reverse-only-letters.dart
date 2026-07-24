class Solution {
   String reverseOnlyLetters(String s) {

    int left = 0;
    int right = s.length - 1;
    List<String> str = s.split("");

    while(left < right) {
        if(!isLetter(str[left])) {
            left++;
    }
    else if(!isLetter(str[right])) {
        right--;
    }
    else {
      String temp = str[right];
      str[right] = str[left];
      str[left] = temp;
      left++;
      right--;
    }
  }

  return str.join("");

}

bool isLetter(String c) {
  int code = c.codeUnitAt(0);
  return (code >= 65 && code <= 90) ||   // A-Z
      (code >= 97 && code <= 122);     // a-z
}
}