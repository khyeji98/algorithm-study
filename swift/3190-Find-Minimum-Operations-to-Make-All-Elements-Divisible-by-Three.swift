// Time Complexity: O(n)
// Space Complexity: O(1)
class Solution {
    func minimumOperations(_ nums: [Int]) -> Int {
        var result: Int = 0

        for num in nums {
            let mod = num % 3   // mod = modulo(나머지)
            // 3으로 나눈 나머지가 0이 아니면, 1을 더하거나 빼는 방법 밖에 없음
            // 따라서 3으로 나눈 나머지가 1 또는 2인 경우 모두 1번의 연산이 필요 (= 값의 차를 구할 필요 없음)
            if mod != 0 {
                result += 1
            }
        }

        return result
    }
}