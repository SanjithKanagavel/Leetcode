import UIKit

class Solution {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var res: [Int] = []
        index.enumerated().map {
            res.insert(nums[$0.offset], at: $0.element)
        }
        return res
    }
}

Solution.init().createTargetArray([0,1,2,3,4], [0,1,2,2,1])
