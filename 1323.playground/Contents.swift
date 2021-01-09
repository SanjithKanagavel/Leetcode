import UIKit

class Solution {
    func maximum69Number (_ num: Int) -> Int {
        var max = num
        (0..<String(num).count).map { idx in
            var a = Array(String(num))
            a[idx] = ((Int(String(a[idx])) ?? 0) == 9 ? "6" : "9")
            max = (max > (Int(String(a)) ?? 0)) ? max : (Int(String(a)) ?? 0)
        }
        return max
    }
}

Solution.init().maximum69Number(9669)
Solution.init().maximum69Number(9996)
Solution.init().maximum69Number(9999)

