# --- Solution 1 --- #
# Time Complexity: O(n)
# Space Complexity: O(1)

class Solution1:
    def isPalindrome(self, x: int) -> bool:
        text = str(x)
        for p in range(len(text) // 2):
            if text[p] == text[len(text) - 1 - p]:
                continue
            return False
        return True

# --- Solution 2 --- #
# Time Complexity: O(log n)
# Space Complexity: O(1)

class Solution2:
    def isPalindrome(self, x: int) -> bool:
        if x < 0 or (x %10 == 0 and x != 0):
            return False
        
        rev = 0
        while rev < x:
            rev = rev * 10 + x % 10
            x //= 10
        
        return x == rev or x == rev // 10
    
# --- Solution 3 --- #
# Time Complexity: O(n)
# Space Complexity: O(n)

class Solution3:
    def isPalindrome(self, x: int) -> bool:
        if str(x) == str(x)[::-1]:
            return True
        return False