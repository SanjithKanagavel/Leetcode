import UIKit


class OrderedStream {
    var data:[String]
    var n: Int
    var prev: Int = 0
    
    init(_ n: Int) {
        self.n = n
        self.data = Array(repeating: "", count: n)
    }
    
    func insert(_ id: Int, _ value: String) -> [String] {
        self.data[id-1] = value
        let after = ( self.data.firstIndex(of: "") ?? self.data.count )
        if (prev >= after) {
            return []
        }
        let res = Array(self.data[prev..<after])
        prev = after
        return res
    }
}

let os = OrderedStream.init(5)
os.insert(3, "ccccc")
os.insert(1, "aaaaa")
os.insert(2, "bbbbb")
os.insert(5, "eeeee")
os.insert(4, "ddddd")
os.data
