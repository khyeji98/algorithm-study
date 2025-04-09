class Solution {
    func digitCount(_ num: String) -> Bool {
        let numCount = num.count
        var digitCount: [Int: Int] = [:]
        for char in num {
            guard let digit = char.wholeNumberValue else { return false }
            digitCount[digit, default: 0] += 1
        }
        let result = Array(0..<numCount).map({String(digitCount[$0, default: 0])}).joined()
        return result == num
    }
}

print(Solution().digitCount("030"))
