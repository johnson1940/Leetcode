/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev = null;
    ListNode? current = head;
    ListNode? next;

    while(current != null) {
       next = current!.next;
       current.next = prev;
       prev = current;
       current = next;
    }
   return prev;
  }
     
}