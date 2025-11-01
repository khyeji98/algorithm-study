class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

class Solution:
    def isMirror(self, node1: Optional[TreeNode], node2: Optional[TreeNode]) -> bool:
        if not node1 and not node2: return True
        if not node1 or not node2: return False
        if node1.val != node2.val: return False
        isMirror1 = self.isMirror(node1.left, node2.right)
        isMirror2 = self.isMirror(node1.right, node2.left)
        return isMirror1 and isMirror2

    def isSymmetric(self, root: Optional[TreeNode]) -> bool:
        if not root: return False
        return self.isMirror(root.left, root.right)
