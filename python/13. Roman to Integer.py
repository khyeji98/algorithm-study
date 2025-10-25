# 로마숫자는 큰수 -> 작은수 순서로 적힌다.
# 단, 작은수가 큰수 앞에 오면 큰수 - 작은수 의 값이 된다.
# 따라서 이전 숫자와 비교하여 이전 숫자가 작으면 2배를 빼주면 된다.

# Time Complexity: O(n)
# Space Complexity: O(1)
class Solution:
    def romanToInt(self, s: str) -> int:
        romans = {'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000}
        result = 0
        prev_value = 0

        for char in s:  
            current_value = romans[char]
            result += current_value
            if prev_value < current_value:
                result -= 2 * prev_value
            prev_value = current_value
        
        return result