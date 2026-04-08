class Solution {
    reverseString(List<String> s) {

    int first_point = 0;
    int second_point = s.length - 1;

    while(first_point < second_point) {
        String temp = s[first_point];
        s[first_point] = s[second_point];
        s[second_point] = temp;
        first_point++;
        second_point--;
    }
    return s;
  }
}