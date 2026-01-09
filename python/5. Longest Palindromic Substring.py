# https://leetcode.com/problems/longest-palindromic-substring/

class Solution:
    def longestPalindrome(self, s: str) -> str:
        if len(s) <= 1:
            return s

        def expand(left: int, right: int) -> str :
            while left >= 0 and right < len(s) and s[left] == s[right]:
                left -= 1
                right += 1
            return s[left+1:right]  # 파이썬 슬라이싱은 끝 인덱스 제외
        
        longest = ""

        for i in range(len(s)):
            p1 = expand(i, i)
            p2 = expand(i, i+1)
            longest = max(longest, p1, p2, key=len) # key=len을 쓰면 길이 기준으로 비교 가능
        
        return longest