class Solution {
    func digitCount(_ num: String) -> Bool {
        let numCount = num.count
        var digitCountStorage: [Int] = Array(repeating: 0, count: numCount)
        for digit in num {
            let digitNum = Int(String(digit))!
            if numCount > digitNum {
                digitCountStorage[digitNum] += 1
            } else { return false }
        }
        let result = digitCountStorage.map({ String($0) }).joined()
        return result == num
    }
}

print(Solution().digitCount("030"))
