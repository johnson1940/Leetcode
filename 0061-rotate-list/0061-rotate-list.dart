/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? rotateRight(ListNode? head, int k) {
    if(head == null || head.next == null || k == 0) return head;
    ListNode? tail = head;
    int length = 1;
    while(tail!.next != null) {
        tail = tail.next;
        length++;
    }
    k = k % length;
    // Making the tail to point to head making it circular 
    tail.next = head;
    ListNode? newTail = head;
    for(int i = 1 ; i < length - k ; i++) {
        newTail = newTail!.next;
    }
    ListNode? newHead = newTail!.next;
    newTail.next = null;
    return newHead;
  }
}