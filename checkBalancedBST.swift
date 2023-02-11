// e.g. Balanced Binary Tree

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
 
class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        guard let root = root else { return true }
        
        let leftDepth = depth(root.left)
        let rightDepth = depth(root.right)
        
        if abs(leftDepth - rightDepth) > 1 { 
            return false 
        } else {
            return isBalanced(root.left) && isBalanced(root.right) 
        }
    }
    
    func depth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }

        return max(depth(root.left), depth(root.right)) + 1
    }
}