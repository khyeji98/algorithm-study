class Solution:
    def charToInt(self, char: chr) -> int:
        if char == 'I': return 1
        if char == 'V': return 5
        if char == 'X': return 10
        if char == 'L': return 50
        if char == 'C': return 100
        if char == 'D': return 500
        if char == 'M': return 1000

    def romanToInt(self, s: str) -> int:
        result = 0

        for index, char in enumerate(s):
            if char == 'I':
                if index + 1 < len(s) and s[index + 1] in ['V', 'X']:
                    result -= self.charToInt(char)
                else:
                    result += self.charToInt(char)
            elif char == 'X':
                if index + 1 < len(s) and s[index + 1] in ['L', 'C']:
                    result -= self.charToInt(char)
                else:
                    result += self.charToInt(char)
            elif char == 'C':
                if index + 1 < len(s) and s[index + 1] in ['D', 'M']:
                    result -= self.charToInt(char)
                else:
                    result += self.charToInt(char)
            else:
                result += self.charToInt(char)
        
        return result