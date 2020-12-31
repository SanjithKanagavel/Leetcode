import UIKit

class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        var allowedDict:[Character: Int] = [:]
        var res = 0
        allowed.map {
            allowedDict[$0] = 0
        }

        words.enumerated().map {
            var canInclude = true
            words[$0.offset].map {
                if (allowedDict[$0] == nil) {
                   canInclude = false
                }
            }
            if(canInclude) {
                res += 1
            }
        }
        
        return res
    }
}

Solution.init().countConsistentStrings("ab", ["ad","bd","aaab","baa","badab"])
Solution.init().countConsistentStrings("abc", ["a","b","c","ab","ac","bc","abc"])
