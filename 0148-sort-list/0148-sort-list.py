# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def sortList(self, head: Optional[ListNode]) -> Optional[ListNode]:
        ele = []
        curr = head

        while curr:
            ele.append(curr.val)
            curr = curr.next
        ele.sort()

        curr = head
        for i in range(len(ele)):
            curr.val = ele[i] 
            curr = curr.next
        return head       
        