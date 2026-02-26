// https://leetcode.com/problems/group-anagrams/
class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var frequencyTable: [[Int]: [String]] = [:]
        let aAsciiValue = Character("a").asciiValue!

        for str in strs {
            var frequencyArray: [Int] = Array(repeating: 0, count: 26)

            for char in str {
                let charAsciiValue = char.asciiValue!
                let index = Int(charAsciiValue - aAsciiValue)
                frequencyArray[index] += 1
            }

            frequencyTable[frequencyArray, default: []].append(str)
        }

        return Array(frequencyTable.values)
    }
}
