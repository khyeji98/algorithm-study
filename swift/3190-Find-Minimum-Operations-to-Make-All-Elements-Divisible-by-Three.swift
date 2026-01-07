class Solution {
    func minimumOperations(_ nums: [Int]) -> Int {
        var result: Int = 0

        for num in nums {
            guard num > 0 else { continue }
            let charge = num % 3
            let remainToThree = abs(3 - charge)
            if charge > remainToThree {
                result += remainToThree
            } else {
                result += charge
            }
        }

        return result
    }
}