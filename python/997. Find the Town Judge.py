from typing import List

class Solution:
    def findJudge(self, n: int, trust: List[List[int]]) -> int:
        # 1. 점수판 배열 생성 (Swift의 Array(repeating: 0, count: n + 1)과 동일)
        score = [0] * (n + 1)

        # 2. 신뢰 점수 계산
        # 파이썬은 [a, b]를 바로 변수 a, b로 꺼낼 수 있어요 (Unpacking)
        for a, b in trust:
            score[a] -= 1  # 믿는 사람 (점수 깎기)
            score[b] += 1  # 믿음 받는 사람 (점수 얻기)

        # 3. 판사 찾기
        # 1번 사람부터 n번 사람까지 순회
        for i in range(1, n + 1):
            if score[i] == n - 1:
                return i
        
        return -1
    
# Swift 코드
# class Solution {
#     func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
#         var score = Array(repeating: 0, count: n + 1)
#           for pair in trust {
#               let a = pair[0]
#               let b = pair[1]
#               score[a] -= 1
#               score[b] += 1
#           }
#           return result[1...].firstIndex(of: n - 1) ?? -1
#     }
# }