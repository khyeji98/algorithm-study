class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        let length = nums.count

        var i = 0

        for j in 1..<length {
            guard nums[i] != nums[j] else { continue }
            i += 1
            nums[i] = nums[j]
        }

        return i + 1
    }
}