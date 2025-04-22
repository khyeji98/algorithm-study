class Solution {
    func findTheDistanceValue(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {
        var count = 0
        for a1 in arr1 {
            guard meetTheCondition(a1, arr2, d) else { continue }
            count += 1
        }
        return count
    }
    
    private func meetTheCondition(_ a1: Int, _ arr2: [Int], _ d: Int) -> Bool {
        for a2 in arr2 {
            guard abs(a1-a2) <= d else { continue }
            return false
        }
        return true
    }
}
