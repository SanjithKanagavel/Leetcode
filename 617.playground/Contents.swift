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
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        if (t1 == nil && t2 == nil) {
            return nil
        }
        let l = mergeTrees(t1?.left, t2?.left)
        let r = mergeTrees(t1?.right, t2?.right)
        return TreeNode((t1?.val ?? 0) + (t2?.val ?? 0), l, r)
    }
    
    func printT(_ t: TreeNode?) {
        if (t != nil) {
            print(t?.val ?? 0)
            printT(t?.left)
            printT(t?.right)
        }
        
    }
}

var t15 = TreeNode(5)
var t13 = TreeNode(3, t15, nil)
var t12 = TreeNode(2)
var t11 = TreeNode(1,t13,t12)

var t24 = TreeNode(4)
var t27 = TreeNode(7)
var t23 = TreeNode(3, nil, t27)
var t21 = TreeNode(1,nil,t24)
var t22 = TreeNode(2,t21,t23)


Solution.init().printT(Solution.init().mergeTrees(t11, t22))
//Solution.init().printT(t11)
//Solution.init().printT(t22)
