class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        hashMap = {}

        for index, num in enumerate(nums):
            needed = target - num
            if needed in hashMap:
                return [hashMap[needed], index]
            hashMap[num] = index
            
        return []