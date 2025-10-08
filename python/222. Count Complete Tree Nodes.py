# Definition for a binary tree node.
from typing import Optional

class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

# <!-- Solution 1: DFS -->
# Time Complexity: O(n)
# Space Complexity: O(1)
class Solution1:
    def countNodes(self, root: Optional[TreeNode]) -> int:
        if not root:
            return 0
        
        left_count = self.countNodes(root.left)
        right_count = self.countNodes(root.right)

        return left_count + right_count + 1

# <!-- Solution 2: Binary Search -->
# Time Complexity: O(log^2 n)
# Space Complexity: O(1)
class Solution2:
    def countNodes(self, root: Optional[TreeNode]) -> int:
        if not root: return 0
        if not root.left: return 1

        left_depth = self.getDepth(root.left)
        right_depth = self.getDepth(root.right)

        left_nodes = 0
        rith_nodes = 0

        if left_depth == right_depth:
            left_nodes = 1 << left_depth
            right_nodes = self.countNodes(root.right)
        else:
            left_nodes = self.countNodes(root.left)
            right_nodes = 1 << right_depth  # 파이썬에서 ^는 XOR 연산자, 거듭제곱은 **
        
        return left_nodes + right_nodes
    
    def getDepth(self, node: TreeNode) -> int:
        depth = 0
        while node:
            depth += 1
            node = node.left
        return depth