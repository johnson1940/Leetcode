/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  bool isPalindrome(ListNode? head) {
    List<int> arr = [];
    ListNode? current = head;

    while(current!= null) {
        arr.add(current.val);
        current = current.next;
    }
     
    int left = 0;
    int right = arr.length - 1;

    while(left < right) {
        if(arr[left] != arr[right]) return false;
        left++;
        right--;
    }
   return true;
  }
}