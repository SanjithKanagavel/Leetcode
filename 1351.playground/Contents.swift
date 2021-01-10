import UIKit

class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var c = 0
        grid.map {
            $0.map {
                c = $0 < 0 ? c + 1 : c
            }
        }
        return c
    }
}

Solution.init().countNegatives([[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]])
Solution.init().countNegatives([[3,2],[1,0]])
Solution.init().countNegatives([[1,-1],[-1,-1]])
Solution.init().countNegatives([[-1]])
