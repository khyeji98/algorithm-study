# Definition for singly-linked list.
from typing import Optional
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
    def __str__(self):
        list_str = ""
        while self.next:
            list_str += f"{self.val} ,"
            self = self.next
        list_str += f"{self.val}"
        return list_str
        
    
class Solution:
    def mergeTwoLists(self, list1: Optional[ListNode], list2: Optional[ListNode]) -> Optional[ListNode]:
        # 리스트1이 없는 경우 리스트2 반환 예외 처리
        if not list1:
            return list2
        # 리스트2이 없는 경우 리스트1 반환 예외 처리
        if not list2:
            return list1

        # 새로운 리스트의 첫 노드 생성
        new = ListNode()        
        # 첫 노드 값은 둘중 작은 값으로 설정
        if list1.val <= list2.val:
            new = ListNode(list1.val)
        else:
            new = ListNode(list2.val)

        # 새 리스트노드의 첫번째값
        new_first = new

        # 두 리스트를 함께 순회하며 작은 값 부터 next에 추가
        while list1 and list2:

            if list1.val <= list2.val:
                new.next = ListNode(list1.val)
                list1 = list1.next
            else:
                new.next = ListNode(list2.val)
                list2 = list2.next
            new = new.next
        # 리스트1에 next가 남아있으면 추가를 위한 로직
        while list1:
            new.next = ListNode(list1.val)
            list1 = list1.next
            new = new.next
        # 리스트2에 next가 남아있으면 추가를 위한 로직
        while list2:
            new.next = ListNode(list2.val)
            list2 = list2.next
            new = new.next
        
        return new_first
    
# Example usage:
list1 = ListNode(1, ListNode(2, ListNode(4)))
list2 = ListNode(1, ListNode(3, ListNode(4)))
solution = Solution()
merged_list = solution.mergeTwoLists(list1, list2)
# Print merged list
print(merged_list)