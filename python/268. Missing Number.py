from typing import List

class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        nums_count = len(nums)
        total_sum = nums_count * (nums_count + 1) // 2
        return total_sum - sum(nums)