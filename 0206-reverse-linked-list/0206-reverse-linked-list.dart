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
     ListNode? previous = null;
     ListNode? current = head;
     ListNode? next;

     while(current != null) {
        // Step 1 save the next first
        next = current.next;
        // step 2 
        current.next = previous;
        // step 3
        previous = current;
        // step 4
        current = next;

     }
   return previous;
  }
}