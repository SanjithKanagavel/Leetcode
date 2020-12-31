import UIKit

class Solution {
    func numberOfMatches(_ n: Int) -> Int {
        return (n <= 1) ? 0 : ((n%2 == 0) ? (n/2 + numberOfMatches(n/2)) : ((n-1)/2 + numberOfMatches(((n-1)/2)+1)))
    }
}

Solution.init().numberOfMatches(14)
