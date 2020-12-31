import UIKit

class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        var r = 0
        var l = 0
        var res = 0
        s.map {
            r = ($0 == "R") ? r + 1 : r
            l = ($0 == "L") ? l + 1 : l
            if (l==r) {
                res = res + 1
                r = 0
                l = 0
            }
        }
        return res
    }
}

Solution.init().balancedStringSplit("RLRRLLRLRL")
Solution.init().balancedStringSplit("RLLLLRRRLR")
Solution.init().balancedStringSplit("LLLLRRRR")
Solution.init().balancedStringSplit("RLRRRLLRLL")

