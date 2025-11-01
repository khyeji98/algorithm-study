### Environment Setup ###
from typing import Optional

class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

### Solution 1: 깊이 우선 탐색(DFS) ###
# Time Complexity: O(n)
# Space Complexity: O(h) -> h는 트리의 높이
class Solution1:
    def isMirror(self, node1: Optional[TreeNode], node2: Optional[TreeNode]) -> bool:
        if not node1 and not node2: return True
        if not node1 or not node2: return False
        if node1.val != node2.val: return False
        isMirror1 = self.isMirror(node1.left, node2.right)
        isMirror2 = self.isMirror(node1.right, node2.left)
        return isMirror1 and isMirror2

    def isSymmetric(self, root: Optional[TreeNode]) -> bool:
        # 빈 트리는 대칭입니다.
        if not root: return True
        return self.isMirror(root.left, root.right)

### Solution 2: 너비 우선 탐색(BFS) ###
# Time Complexity: O(n)
# Space Complexity: O(w) -> w는 트리의 최대 너비

from collections import deque

class Solution2:
    def isSymmetric(self, root: Optional[TreeNode]) -> bool:
        if not root: return True

        queue = deque([(root.left, root.right)])

        # 큐가 빌 때까지 (모든 쌍을 비교할 때까지) 반복합니다.
        while queue:
            node1, node2 = queue.popleft()

            if not node1 and not node2:
                continue
            if not node1 or not node2:
                return False
            if node1.val != node2.val:
                return False

            # 다음으로 비교할 쌍들을 큐에 추가합니다. (재귀와 순서가 동일)
            queue.append((node1.left, node2.right))
            queue.append((node1.right, node2.left))

        return True