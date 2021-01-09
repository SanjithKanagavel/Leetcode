import UIKit

class Solution {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        var j = 0
        var lhs = 0
        var rhs = 0
        mat.enumerated().map { (i,_) in
            lhs = lhs + mat[i][j]
            j += 1
        }
        j = mat.count - 1
        mat.enumerated().map { (i,_) in
            rhs = (i == j) ? rhs : (rhs + mat[i][j])
            j -= 1
        }
        return lhs + rhs
    }
}

Solution.init().diagonalSum([[1,2,3],
                             [4,5,6],
                             [7,8,9]])

Solution.init().diagonalSum([[1,1,1,1],
                              [1,1,1,1],
                              [1,1,1,1],
                              [1,1,1,1]])

Solution.init().diagonalSum([[5]])
