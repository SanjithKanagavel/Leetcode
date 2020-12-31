import Foundation

class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var res = 0
        stones.map {
            if (jewels.contains($0)) {
                res += 1
            }
        }
        return res
    }
}

Solution.init().numJewelsInStones("aA", "aAAbbbb")
