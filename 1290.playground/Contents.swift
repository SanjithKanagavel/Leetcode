import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func getDecimalValue(_ head: ListNode?) -> Int {
        var t = head
        var val:Int = 0
        var i = -1
        while (t != nil) {
            t = t?.next
            i += 1
        }
        t = head
        while (t != nil) {
            if let a = t?.val, a != 0 {
                val += Int(pow(Double(2), Double(i)))
            }
            t = t?.next
            i -= 1
        }
        return val
    }
}

var a = ListNode(1)
var b = ListNode(0)
var c = ListNode(1)

a.next = b
b.next = c

Solution.init().getDecimalValue(a)
