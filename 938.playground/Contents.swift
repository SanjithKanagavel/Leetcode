import UIKit

public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init() { self.val = 0; self.left = nil; self.right = nil; }
     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
         self.val = val
         self.left = left
         self.right = right
     }
 }

class Solution {
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        if (root == nil) {
            return 0
        }
        let data = ((root?.val ?? 0) >= low && (root?.val ?? 0) <= high) ? (root?.val ?? 0) : 0
        return data + rangeSumBST(root?.left, low, high) + rangeSumBST(root?.right, low, high)
    }
}

var a = TreeNode(10)
var b = TreeNode(5)
var c = TreeNode(15)
var d = TreeNode(3)
var e = TreeNode(7)
var f = TreeNode(18)
a.left = b
a.right = c
b.left = d
b.right = e
c.right = f

Solution.init().rangeSumBST(a, 7, 15)
