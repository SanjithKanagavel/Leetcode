import Foundation

class Solution {
    func interpret(_ command: String) -> String {
        guard command.count >= 1 && command.count <= 100 else { return String() }
        return command.replacingOccurrences(of: "()", with: "o").replacingOccurrences(of: "(al)", with: "al")
    }
}

Solution.init().interpret("(al)G(al)()()G")

