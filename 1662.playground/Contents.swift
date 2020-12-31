import UIKit

class Solution {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        return word1.joined() == word2.joined()
    }
}

Solution.init().arrayStringsAreEqual(["ab", "c"], ["a", "bc"])
Solution.init().arrayStringsAreEqual(["a", "cb"], ["ab", "c"])
Solution.init().arrayStringsAreEqual(["abc", "d", "defg"], ["abcddefg"])
