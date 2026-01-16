# https://leetcode.com/problems/longest-common-prefix/

class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        prefix = ""
        pointer = 0

        while True:
            str = strs[0]
            if pointer >= len(str):
                break
            char = str[pointer]
            for s in strs[1:]:
                if pointer >= len(s) or char != s[pointer]:
                    char = ""
                    break
            
            if char == "":
                break
            
            prefix += char
            pointer += 1
        
        return prefix