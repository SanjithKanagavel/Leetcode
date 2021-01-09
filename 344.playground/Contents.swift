import UIKit

class Solution {
    func reverseString(_ s: inout [Character]) {
        s.reverse()
    }
}

var i:[Character] = ["h","e","l","l","o"]
Solution.init().reverseString(&i)
print(i)
