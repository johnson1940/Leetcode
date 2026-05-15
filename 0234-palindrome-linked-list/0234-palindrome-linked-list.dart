/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  // Method 1  
//   bool isPalindrome(ListNode? head) {
//     List<int> arr = [];
//     ListNode? current = head;

//     while(current!= null) {
//         arr.add(current.val);
//         current = current.next;
//     }
     
//     int left = 0;
//     int right = arr.length - 1;

//     while(left < right) {
//         if(arr[left] != arr[right]) return false;
//         left++;
//         right--;
//     }
//    return true;
//   }

   bool isPalindrome(ListNode? head) {
      if(head == null || head.next == null) return true;
      // Step 1 finding the middle of the linked list
      ListNode? slow = head;
      ListNode? fast = head;
      while(fast != null && fast.next != null) {
        slow = slow!.next;
        fast = fast.next!.next;
      }

      // Step 2 reversing the second half
      ListNode? prev = null;
      ListNode? current = slow;
      while(current != null) {
        ListNode? next = current.next;
        current.next = prev;
        prev = current;
        current = next;
      }

      /// Step 3 compare the second half and the first half
      ListNode? left = head;
      ListNode? right = prev;
      while(right != null && left != null) {
        if(left.val != right.val) return false;
        left = left.next;
        right = right.next;
      }
    return true;  
   }
}