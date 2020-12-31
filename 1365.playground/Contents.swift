import Foundation

class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let sortedArr = nums.sorted(by: <) //O(nlogn)
        var sortedArrPosDict:[Int:Int] = [:]
        sortedArr.enumerated().map { (idx,val) in
            if sortedArrPosDict[val] == nil {
                sortedArrPosDict[val] = idx
            }
        }
        return nums.map {
            return sortedArrPosDict[$0] ?? 0
        }
    }
}

Solution.init().smallerNumbersThanCurrent([8,1,2,2,3])
