import UIKit

class Solution {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        return (0..<n).map { start + $0 * 2 }.reduce(0,^)
    }
}

Solution.init().xorOperation(5, 0)
Solution.init().xorOperation(4, 3)
Solution.init().xorOperation(1, 7)
Solution.init().xorOperation(10, 5)
