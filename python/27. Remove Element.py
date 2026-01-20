# https://leetcode.com/problems/remove-element/

class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        length = len(nums)

        if length == 0:
            return 0

        i = 0

        for j in range(length):
            if nums[j] != val:
                nums[i] = nums[j]
                i += 1
        
        return i
