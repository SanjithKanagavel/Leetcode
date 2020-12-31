import UIKit

class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        guard n >= 1 && n <= 500 && nums.count == 2*n else { return [] }
        var res:[Int] = []
        for i in 0..<n {
            res.append(nums[i])
            res.append(nums[i+n])
        }
        return res
    }
}

Solution.init().shuffle([2,5,1,3,4,7], 3)
