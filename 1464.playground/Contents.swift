import Foundation

class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var a = 0
        (0..<(nums.count)).map { i in
            ((i+1)..<(nums.count)).map { j in
                let v = ((nums[i]-1)*(nums[j]-1))
                a = ( v > a) ? v : a
            }
        }
        
        return a
    }
}

Solution.init().maxProduct([3,4,5,2])
Solution.init().maxProduct([1,5,4,5])
Solution.init().maxProduct([3,7])
