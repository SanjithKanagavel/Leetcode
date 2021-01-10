import UIKit

class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var r:[Int] = []
        (left...right).map { val in
            var f = false
            Array(String(val)).map { idx in
                if let v = Int(String(idx)),
                   v == 0 || (val % v != 0) {
                    f = true
                }
            }
            if(!f) {
                r.append(val)
            }
        }
        return r
    }
}

Solution.init().selfDividingNumbers(1, 22)
