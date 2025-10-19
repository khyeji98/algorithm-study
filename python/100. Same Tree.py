from typing import Optional

class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

# Time Complexity: O(n)
# Space Complexity: O(h) -> h는 트리의 높이
class Solution:
    def isSameTree(self, p: Optional[TreeNode], q: Optional[TreeNode]) -> bool:
        if not p and not q: return True # p와 q 둘 다 None인 경우
        if not p or not q: return False # p와 q 중 하나만 None인 경우

        if p.val != q.val: return False # 노드의 값이 다른 경우
        return self.isSameTree(p.left, q.left) and self.isSameTree(p.right, q.right) # 왼쪽과 오른쪽 서브트리 비교