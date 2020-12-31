import UIKit

class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let max = candies.max() ?? 0
        return candies.map {
            return $0 + extraCandies >= max
        }
    }
}

Solution.init().kidsWithCandies([12,1,12], 10)
