// 시간복잡도: O(numRows^2) : 비슷한 횟수만큼 중첩 반복문이 실행되기 때문
// 공간복잡도: O(numRows^2) : 결과를 저장하기 위해 2차원 배열이 필요하기 때문

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var result: [[Int]] = [[1]]
        if numRows == 1 {
            return result
        }

        for row in 1..<numRows {
            let previous = result[row-1]
            var currentRow: [Int] = []
            currentRow.reserveCapacity(row+1) // 1. 미리 용량 할당으로 성능 최적화, (realloc) 수차례 발생 방지
            
            for i in 0...row {
                // 2. 분기 수 3 => 단일 조건 검사로 최적화 가능
                if i == 0 || i == row {
                    currentRow.append(1)  // 3. 양 끝은 항상 1이므로, 상수 접근
                } else {
                    currentRow.append(previous[i-1] + previous[i])
                }
            }
            result.append(currentRow)
        }

        return result
    }
}
