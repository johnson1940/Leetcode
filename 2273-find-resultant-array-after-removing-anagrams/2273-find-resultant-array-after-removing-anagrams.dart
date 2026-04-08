class Solution {
  List<String> removeAnagrams(List<String> words) {

    List<String> stack = [];
    for(String word in words) {
        if(stack.isNotEmpty && _sorted(stack.last) == _sorted(word)) {
            continue;
        }
        stack.add(word);
    }
    return stack;
    
  }

  String _sorted(String s) {
  List<String> chars = s.split('');
  chars.sort();
  return chars.join();
}
}