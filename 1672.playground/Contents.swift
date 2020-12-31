class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        return accounts.map { return $0.reduce(0, +) }.max() ?? 0
    }
}
