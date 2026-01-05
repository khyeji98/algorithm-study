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
            var nums: [Int] = []
            for i in 0...row {
                switch i {
                case 0:
                    nums.append(previous.first!)
                case row:
                    nums.append(previous.last!)
                default:
                    let num1 = previous[i-1]
                    let num2 = previous[i]
                    nums.append(num1+num2)
                }
            }
            result.append(nums)
        }

        return result
    }
}
