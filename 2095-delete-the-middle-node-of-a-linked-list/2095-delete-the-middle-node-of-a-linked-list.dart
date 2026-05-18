/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? deleteMiddle(ListNode? head) {
     
     /// If there is an single data return it because there is
     /// Middle element in it 
     if(head!.next == null) {
       head = null;  
       return head;
      } 

      ListNode? fast = head;
      ListNode? slow = head;
      ListNode? prev;

      while(fast != null && fast.next != null) {
        prev = slow;
        slow = slow!.next;
        fast = fast.next!.next;
      }

    prev!.next = slow!.next;   
    return head;
  }
}