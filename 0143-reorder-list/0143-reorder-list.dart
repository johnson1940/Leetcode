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
    
    if (head == null || head.next == null) return;

    // Step 1 finding the middle
    ListNode slow = head;
    ListNode? fast = head.next;

    while(fast != null && fast.next != null) {
        slow = slow.next!;
        fast = fast.next!.next;
    }

    // Step 2 - reversing he second half
    ListNode? second = slow.next;
    slow.next = null;
    ListNode? prev;

    while(second != null) {
        final temp = second.next;
        second.next = prev;
        prev = second;
        second = temp;
    }

    /// Step 3 - Merge the two halfs
    ListNode? first = head;
    second = prev;
    while(second != null) {
        final tmp1 = first!.next;
        final tmp2 = second.next;
        
        first.next = second;
        second.next= tmp1;
        first = tmp1;
        second = tmp2;
    }

  }
}