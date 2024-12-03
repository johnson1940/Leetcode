# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
   def removeElements(self, head: Optional[ListNode], val: int) -> Optional[ListNode]:
    # Use a dummy node to handle edge cases like removing the head node
    dummy = ListNode(-1)
    dummy.next = head
    cur = dummy
    
    while cur.next is not None:
        if cur.next.val == val:
            # Remove the node with the target value
            cur.next = cur.next.next
        else:
            # Move to the next node
            cur = cur.next
    
    return dummy.next         


        