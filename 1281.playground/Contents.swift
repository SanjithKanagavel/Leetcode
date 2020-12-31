import UIKit

class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        var product = 1
        var sum = 0
        Array(String(n)).map {
            product = (Int(String($0)) ?? 1) * product
            sum = (Int(String($0)) ?? 0) + sum
        }
        return product - sum
    }
}

Solution.init().subtractProductAndSum(234)
