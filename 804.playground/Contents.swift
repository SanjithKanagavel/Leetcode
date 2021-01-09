import Foundation

class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        let a =  ["a":".-",
                  "b":"-...",
                  "c":"-.-.",
                  "d":"-..",
                  "e":".",
                  "f":"..-.",
                  "g":"--.",
                  "h":"....",
                  "i":"..",
                  "j":".---",
                  "k":"-.-",
                  "l":".-..",
                  "m":"--",
                  "n":"-.",
                  "o":"---",
                  "p":".--.",
                  "q":"--.-",
                  "r":".-.",
                  "s":"...",
                  "t":"-",
                  "u":"..-",
                  "v":"...-",
                  "w":".--",
                  "x":"-..-",
                  "y":"-.--",
                  "z":"--.."]
        return Set(words.map {
            $0.map {
                a[String($0)] ?? ""
            }.joined()
        }).count
    }
}

Solution.init().uniqueMorseRepresentations(["gin", "zen", "gig", "msg"])
