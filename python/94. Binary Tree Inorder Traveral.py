from typing import Optional, List

class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

class Solution:
    def inorderTraversal(self, root: Optional[TreeNode]) -> List[int]:
        inordered = []

        def inorder(node):
            if not node: return 
            inorder(node.left)
            inordered.append(node.val)
            inorder(node.right)
            
        inorder(root)
        return inordered