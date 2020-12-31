import UIKit


class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        guard (nums.count >= 1 && nums.count <= 1000) else { return nums }
        var prev = 0
        return nums.map { item in
            prev += item
            return prev
        }
    }
}

Solution.init().runningSum([1,2,3,4])
