class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

### 깊이 우선 탐색(DFS) ###
# Time Complexity: O(n)
# Space Complexity: O(h) -> h는 트리의 높이
class Solution:
    def maxDepth(self, root: Optional[TreeNode]) -> int:
        if not root: return 0
        left = root.left
        right = root.right
        if not left and not right: return 1
        left_depth = self.maxDepth(left)
        right_depth = self.maxDepth(right)
        if left_depth >= right_depth:
            return left_depth + 1
        else :
            return right_depth + 1