# https://leetcode.com/problems/maximum-number-of-balloons/

class Solution:
    def maxNumberOfBalloons(self, text: str) -> int:
        table = {'a': 0, 'b': 0, 'l': 0, 'n': 0, 'o': 0}

        for letter in text:
            if letter in table:
                table[letter] += 1

        return min(table['a'], table['b'], table['n'], table['l']//2, table['o']//2)
