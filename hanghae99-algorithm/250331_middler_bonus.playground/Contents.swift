let input1_num: [Int] = [1,1,1,2,2,3]
let input1_k: Int = 2
let input2_num: [Int] = [1]
let input2_k: Int = 1

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        // 1. 숫자별 빈도수 카운트
        var frequencyByNum: [Int: Int] = [:]
        for num in nums {
            frequencyByNum[num, default: 0] += 1
        }
        
        // 2. 빈도 카운트를 key로 한 딕셔너리(해시테이블) 생성
        var numsByFrequency: [Int: [Int]] = [:]
        for (num, frequency) in frequencyByNum {
            numsByFrequency[frequency, default: []].append(num)
        }
        
        // 3. 가능한 가장 큰 빈도수 값부터 순회하면서 해당되는 수 추출
        var results: [Int] = []
        for frequency in stride(from: nums.count, through: 0, by: -1) {
            results.append(contentsOf: numsByFrequency[frequency] ?? [])
            if results.count >= k {
                break
            }
        }
        return Array(results.prefix(k))
    }
}

Solution().topKFrequent(input1_num, input1_k)
