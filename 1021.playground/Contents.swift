import UIKit

class Solution {
    func removeOuterParentheses(_ S: String) -> String {
        var a = false
        var i = 0
        return S.map {
            if(String($0) == "(") {
                if(i == 0 && !a) {
                    a = true
                    return ""
                } else {
                    i += 1
                }
            } else {
                if(i == 0 && a) {
                    a = false
                    return ""
                } else {
                    i -= 1                    
                }
            }
            return String($0)
        }.joined()
    }
}

Solution.init().removeOuterParentheses("()()")
