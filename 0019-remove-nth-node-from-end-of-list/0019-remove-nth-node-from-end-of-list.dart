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
     ListNode dummy = ListNode(0, head);
     ListNode? slow = dummy;
     ListNode? fast = dummy;

     for(int i = 0; i < n ; i++) {
        fast = fast!.next;
     }

     while(fast!.next != null) {
        slow = slow!.next;
        fast = fast.next;
     }

    slow!.next = slow.next!.next;

    return dummy.next; 

    //  while(n > 0 && right != null) {
    //     right = right!.next;
    //     n -= 1;
    //  }

    //  while(right!.next != null) {
    //     left = left!.next;
    //     right = right.next;
    //  }

    // left!.next = left.next!.next;

    // return dummy.next;
  }
}