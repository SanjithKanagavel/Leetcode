class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        guard (nums.count >= 1 && nums.count <= 100) else { return 0 }
        var dict : [Int:[Int]] = [:]
        for (item,index) in nums.enumerated() {
            var res = [item]
            if let val = dict[index] {
                res = val
                res.append(item)
            }
            dict[index] = res
        }
        var c = 0
        for (_,val) in dict {
            for i in 0..<val.count-1 {
                for j in (i+1)..<val.count {
                    c = val[i] < val[j] ? c + 1 : c
                }
            }
        }
        return c
    }
}

Solution.init().numIdenticalPairs([1,2,3,1,1,3])
Solution.init().numIdenticalPairs([1,1,1,1])
Solution.init().numIdenticalPairs([1,2,3])
