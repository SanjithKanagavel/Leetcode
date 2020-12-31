import UIKit

class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var res:[Int] = []
        stride(from: 0, to: nums.count, by: 2).map {
            res.append(contentsOf: Array(repeating: nums[$0+1], count: nums[$0]))
        }
        return res
    }
}

Solution.init().decompressRLElist([1,1,2,3])
Solution.init().decompressRLElist([1,2,3,4])
