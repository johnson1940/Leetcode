/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? swapPairs(ListNode? head) {
     ListNode dummy = ListNode(0);
     dummy.next = head;
     ListNode? prev = dummy;

     while(prev!.next != null && prev.next!.next != null) {
        ListNode p1 = prev.next!;
        ListNode p2 = prev.next!.next!;

        ListNode? nextPair = p2.next;

        prev.next = p2;
        p2.next = p1;
        p1.next = nextPair;

        prev = p1;
     }
    return dummy.next;
  }
}