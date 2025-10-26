from typing import Optional

class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

# Time Complexity: O(n + m)
# Space Complexity: O(1)    
class Solution:
    def mergeTwoLists(self, list1: Optional[ListNode], list2: Optional[ListNode]) -> Optional[ListNode]:
        if not list1: return list2
        if not list2: return list1

        head = list1
        pointer1 = list1.next
        pointer2 = list2
        if head.val > list2.val:
            head = list2
            pointer1 = list1
            pointer2 = list2.next
        tail = head

        while pointer1 and pointer2:
            if pointer1.val >= pointer2.val:
                tail.next = pointer2
                pointer2 = pointer2.next
            else:
                tail.next = pointer1
                pointer1 = pointer1.next
            tail = tail.next

        tail.next = pointer1 or pointer2
        return head