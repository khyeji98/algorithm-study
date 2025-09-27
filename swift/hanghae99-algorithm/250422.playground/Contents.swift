class Solution {
    func findTheDistanceValue(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {
        let sortedArr2 = arr2.sorted()
        var counts = 0
        for a1 in arr1 {
            let index = sortedArr2.binarySearchInsertPosition(of: a1)
            if index < sortedArr2.count, abs(sortedArr2[index]-a1) <= d {
                continue
            }
            if index > 0, abs(sortedArr2[index-1]-a1) <= d {
                continue
            }
            counts += 1
        }
        return counts
    }
}

extension Array where Element == Int {
    func binarySearchInsertPosition(of target: Int) -> Int {
        var low = 0, high = count
        // 점점 좁혀가며 정렬상 target이 있어야 할 위치 찾기
        while low < high {
            let mid = (low + high) / 2
            if self[mid] < target {
                // 시작점 변경
                low = mid + 1
            } else {
                // 끝점 변경
                high = mid
            }
        }
        return low
    }
}

Solution().findTheDistanceValue([4,5,8], [10,9,1,8], 2)
