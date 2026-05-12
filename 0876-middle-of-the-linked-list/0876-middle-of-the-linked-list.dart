/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
//   ListNode? middleNode(ListNode? head) {
//     int length = 0;
//     ListNode? current = head;
//     while(current != null) {
//         length++;
//         current = current.next;
//     }
//     int middleIndex = length ~/ 2;
//     current = head;
//     for(int i = 0 ; i < middleIndex; i++) {
//         current = current!.next;
//     }
//    return current; 
//   }

    ListNode? middleNode(ListNode? head) {

        ListNode? slow = head;
        ListNode? fast = head;

        while(fast != null && fast.next != null) {
            slow = slow!.next;
            fast = fast.next!.next;
        }
       return slow;    
    }
}