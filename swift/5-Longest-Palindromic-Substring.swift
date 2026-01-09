// https://leetcode.com/problems/longest-palindromic-substring/

class Solution {
    func longestPalindrome(_ s: String) -> String {
        var chars = Array(s)
        var start: Int = 0
        var maxLength: Int = 0

        func expandMaxLength(_ left: Int, _ right: Int) -> Int {
            var l = left
            var r = right

            while l >= 0 && r <= chars.count - 1 && chars[l] == chars[r] {
                l -= 1
                r += 1
            }

            return r - l - 1
        }

        for i in 0..<chars.count {
            let length1 = expandMaxLength(i, i)
            let length2 = expandMaxLength(i, i+1)

            let length = max(length1, length2)
            if maxLength < length {
                start = i - (length - 1) / 2
                maxLength = length
            }
        }

        return String(chars[start..<(start+maxLength)])
    }
}