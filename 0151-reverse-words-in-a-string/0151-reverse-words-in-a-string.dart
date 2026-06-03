class Solution {
   String reverseWords(String s) {
      
   var words = s
    .split(' ')
    .where((word) => word.isNotEmpty)
    .toList();
  
   int left = 0;
   int right = words.length - 1;
  
   while(left < right) {
     String temp = words[left];
     words[left] = words[right];
     words[right] = temp;
     left++;
     right--;
   }
  
  return words.join(' ');
}
}