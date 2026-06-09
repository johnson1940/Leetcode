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
      while(current != null) {
        ListNode? nextNode = current.next;
        current.next = prev;
        prev = current;
        current = nextNode;
      }
    return prev;  
  }
}

// current -> 1 -> 2 -> 3 -> 4 -> 5
// NextNode -> 2 -> 3 -> 4 -> 5
//   1   2-> 3 -> 4 -> 5
// prev = 1
// current = 2 -> 3 -> 4 -> 5

// NextNode = 3 -> 4 -> 5
//  2 <- 1