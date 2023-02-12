// e.g. Binary Tree Level Order Traversal

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
    func levelOrder(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }

        var traversal = [Int]()
        var queue = [root]

        while !queue.isEmpty {
            let node = queue.removeFirst()
            traversal.append(node.val)

            if let left = node.left {
                queue.append(left)
            }

            if let right = node.right {
                queue.append(right)
            }
        }

        return traversal
    }
}