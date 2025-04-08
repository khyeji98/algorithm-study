class Solution {
    func climbStairs(_ n: Int) -> Int {
        guard n > 1 else { return 1 }
        
        // index를 계단 단계로 가정
        var dp = Array(repeating: 0, count: n+1)
        dp[0] = 1   // 0번째 계단까지의 경우의 수
        dp[1] = 1   // 1번째 계단까지의 경우의 수
        for i in 2...n {
            dp[i] = dp[i - 1] + dp[i - 2]
        }
        return dp[n]
    }
}

print(Solution().climbStairs(45))
