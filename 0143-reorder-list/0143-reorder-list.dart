/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  void reorderList(ListNode? head) {
    /// Step 1 finding the middle 

    ListNode? slow = head;
    ListNode? fast = head;

    while(fast != null && fast!.next != null) {
        slow = slow!.next;
        fast = fast.next!.next;
    }

    /// Step 2 reversing the second half;
    ListNode? prev = null;
    ListNode? current = slow;

    while(current != null) {
        ListNode? next = current.next;
        current.next = prev;
        prev = current;
        current = next;
    }

    /// Step 3 merging two half
    ListNode? p1 = head;
    ListNode? p2 = prev;

    while(p2!.next != null && p1!.next != null) {
        ListNode? p1Next = p1.next;
        ListNode? p2Next = p2.next;

        p1.next = p2;
        p2.next = p1Next;

        p1 = p1Next;
        p2 = p2Next;
    }
  }
}