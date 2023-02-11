// e.g. Convert Sorted Array to Binary Search Tree

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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        if nums.count == 0 { return nil }
        let sortedNums = nums.sorted()

        return createTree(0, sortedNums.count - 1, sortedNums)
    }

    func createTree(_ left: Int, _ right: Int, _ nums: [Int]) -> TreeNode {
        let mid = left + (right - left) / 2

        let current = TreeNode(nums[mid])

        if mid - left > 0 {
            current.left = createTree(left, mid - 1, nums)
        }

        if right - mid > 0 {
            current.right = createTree(mid + 1, right, nums)
        }
        
        return current
    }
}