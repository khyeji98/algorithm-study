# https://leetcode.com/problems/longest-substring-without-repeating-characters/

class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        max_length = 0
        leading = 0
        char_index = {} # <= table

        for (trailing, char) in enumerate(s):
            if char in char_index and char_index[char] >= leading: # 중복 문자 발견, leading이랑 같아도 다음 index로 이동해야 함
                leading = char_index[char] + 1
            
            char_index[char] = trailing
            max_length = max(max_length, trailing - leading + 1)
        
        return max_length