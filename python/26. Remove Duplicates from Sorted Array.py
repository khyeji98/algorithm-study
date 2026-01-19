# https://leetcode.com/problems/remove-duplicates-from-sorted-array/

# 기억할 것 : 정렬이 되어있음, 반환한 int 값만큼 nums를 순회해서 검사하기 때문에 중복 원소를 제거하는 것이 아니라 덮어써서 수정해야 함

class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        length = len(nums)
        
        if length == 1:
            return 1

        i = 0

        for j in range(1, length):
            if nums[i] != nums[j]:
                i += 1  # 중복이 아닌 경우 원소를 덮어써야 하기 때문에 +1 이동
                nums[i] = nums[j]
        
        return i + 1