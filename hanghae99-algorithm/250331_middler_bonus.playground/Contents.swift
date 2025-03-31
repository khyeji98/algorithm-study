let input1_num: [Int] = [1,1,1,2,2,3]
let input1_k: Int = 2
let input2_num: [Int] = [1]
let input2_k: Int = 1

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        for num in nums {
            dict[num] = (dict[num] ?? 0) + 1
        }
        return dict.sorted(by: { $0.value > $1.value })[0..<k].map({ $0.key })
    }
}

Solution().topKFrequent(input1_num, input1_k)
