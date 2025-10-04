# Time Complexity: O(log x)
# Space Complexity: O(1)

class Solution:
    def mySqrt(self, x: int) -> int:
        if x < 2:
            return x

        left = 1        # 탐색 범위의 시작점(조건에 해당되지 않을 수도 있는 값을 "후보값의 검증을 위해" 탐색 범위의 시작점으로 확)
        right = x // 2  # x의 제곱근은 x/2를 넘지 않음
        result = 1      # 후보값

        while left <= right:
            mid = (left + right) // 2
            if mid * mid <= x:
                left = mid + 1
                result = mid
            else:
                right = mid - 1

        return result