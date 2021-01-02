import UIKit

class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        let sarr = Array(s)
        var res = Array(repeating: "", count: indices.count)
        indices.enumerated().map {
            res[$0.element] = String(sarr[$0.offset])
        }
        return res.joined()
    }
}

Solution.init().restoreString("aiohn", [3,1,4,2,0])
//0-1-2"3"-3
