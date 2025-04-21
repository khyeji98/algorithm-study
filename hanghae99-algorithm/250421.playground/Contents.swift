class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let nums1Set = Set(nums1)
        let nums2Set = Set(nums2)
        if nums1Set.count < nums2Set.count {
            return loopForIntersection(nums2Set, nums1Set)
        } else {
            return loopForIntersection(nums1Set, nums2Set)
        }
    }
    
    private func loopForIntersection(_ loopNums: Set<Int>, _ comparedNums: Set<Int>) -> [Int] {
        var results: [Int] = []
        for num in loopNums {
            guard comparedNums.contains(num) else { continue }
            results.append(num)
        }
        return results
    }
}
