import UIKit

class Solution {
    func maxDepth(_ s: String) -> Int {
        var m = 0
        var l = 0
        s.map {
            l = ($0 == "(") ? l + 1 : (($0 == ")") ? l - 1 : l)
            m = (m < l) ? l : m            
        }
        return m
    }
}

Solution.init().maxDepth("1+(2*3)/(2-1)")
