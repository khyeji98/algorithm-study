// https://leetcode.com/problems/longest-common-prefix/

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        let mappedStrs = strs.map(Array.init)

        var prefix: [Character] = []
        var pointer: Int = 0

        let str = mappedStrs.first!
        while pointer < str.count {
            guard pointer < str.count else { break }

            var allMatch = true
            let char = str[pointer]
            for s in mappedStrs[1...] {
                if pointer >= s.count || char != s[pointer] {
                    allMatch = false
                    break
                }
            }

            if !allMatch {
                break
            }

            prefix.append(char)
            pointer += 1
        }

        return String(prefix)
    }
}