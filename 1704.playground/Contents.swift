import Foundation

class Solution {
    func halvesAreAlike(_ s: String) -> Bool {
        let b = String.Index(utf16Offset:0, in: s)
        let m = String.Index(utf16Offset:s.count/2, in: s)
        let e = String.Index(utf16Offset:s.count, in: s)
        let lhs = String(s[b..<m]).filter { (e) -> Bool in
            let elem = String(e).lowercased()
            return (elem == "a" || elem == "e" ||  elem == "i" ||  elem == "o" ||  elem == "u")
        }.count
        let rhs = String(s[m..<e]).filter { (e) -> Bool in
            let elem = String(e).lowercased()
            return (elem == "a" || elem == "e" ||  elem == "i" ||  elem == "o" ||  elem == "u")
        }.count
        return (lhs == rhs)
    }
}

Solution.init().halvesAreAlike("MerryChristmas")
Solution.init().halvesAreAlike("book")
Solution.init().halvesAreAlike("AbCdEfGh")



