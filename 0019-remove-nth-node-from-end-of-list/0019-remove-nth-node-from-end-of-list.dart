/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? removeNthFromEnd(ListNode? head, int n) {
     ListNode dummy = ListNode(0);
     dummy.next = head;
     ListNode? slow = dummy;
     ListNode? fast = dummy;

     for(int i = 0 ; i < n ; i++) {
        fast = fast!.next;
     }

     while(fast!.next != null) {
        slow = slow!.next;
        fast = fast.next;
     }

    slow!.next = slow.next!.next; 

    return dummy.next;
  }
}