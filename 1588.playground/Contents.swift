import UIKit

class Solution {
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        var res = 0
        arr.enumerated().map { (idx,_) in
            var len = arr.count
            len = (len % 2 == 0) ? len : len - 1
            while len >= 0 {
                if(idx + len < arr.count) {
                    res = arr[idx...(idx + len)].reduce(res, +)
                }
                len -= 2
            }
        }
        return res
    }
}

Solution.init().sumOddLengthSubarrays([1,4,2,5,3])
Solution.init().sumOddLengthSubarrays([1,2])
Solution.init().sumOddLengthSubarrays([10,11,12])
