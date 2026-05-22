/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? sortList(ListNode? head) {
    if(head == null || head.next == null) return head;
    ListNode? mid = findMiddleElement(head);
    ListNode? right = mid!.next;
    mid.next = null;
    
    ListNode? leftSort = sortList(head);
    ListNode? rightSort = sortList(right);

    return mergeNode(leftSort, rightSort);
  }

  // Merging the node
  ListNode? mergeNode(ListNode? l1, ListNode? l2) {
    ListNode? dummy = ListNode(0);
    ListNode? current = dummy;

    while(l1 != null && l2 != null) {
        if(l1.val <= l2.val) {
            current!.next = l1;
            l1 = l1.next;
        }
        else {
            current!.next = l2;
            l2 = l2.next;
        }
     current = current.next;   
    }

    if(l1 != null) current!.next = l1;
    if(l2 != null) current!.next = l2;

    return dummy.next;
  }

  // finding the middle 
ListNode? findMiddleElement(ListNode? head) {
  ListNode? slow = head;
  ListNode? fast = head;
  ListNode? prev = head;

  while(fast != null && fast.next != null) {
    prev = slow;
    slow = slow!.next;
    fast = fast.next!.next;
  }
  return prev;
}


}