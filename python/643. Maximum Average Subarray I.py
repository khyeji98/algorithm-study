# https://leetcode.com/problems/maximum-average-subarray-i/

class Solution:
    def findMaxAverage(self, nums: List[int], k: int) -> float:
        length = len(nums)
        window_sum = sum(nums[:k])
        max_sum = window_sum
        
        for i in range(1, length-k+1):
            window_sum = window_sum - nums[i-1] + nums[i+k-1]
            max_sum = max(window_sum, max_sum)
            
        return max_sum / k
