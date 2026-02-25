// https://leetcode.com/problems/reverse-words-in-a-string/
class Solution {
    func reverseWords(_ s: String) -> String {
        var words: [String] = []
        var wordsCount: Int = 0
        var tempWord: String = ""

        for char in s {
            if char == " " {
                guard !tempWord.isEmpty else { continue }
                words.append(tempWord)
                wordsCount += 1
                tempWord = ""
            } else {
                tempWord.append(char)
            }
        }

        if !tempWord.isEmpty {
            words.append(tempWord)
            wordsCount += 1
        }

        var result: String = ""

        for i in 0..<wordsCount {
            let word = words[wordsCount - 1 - i]
            result += word

            if i < (wordsCount - 1) {
                result += " "
            }
        }

        return result
    }
}
