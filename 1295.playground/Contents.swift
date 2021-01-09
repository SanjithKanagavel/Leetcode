import UIKit

class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        return nums.map {
            return ($0.description.count % 2 == 0) ? 1 : 0
        }.reduce(0, +)
    }
}

Solution.init().findNumbers([12,345,2,6,7896])
Solution.init().findNumbers([555,901,482,1771])

