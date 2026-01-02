class Solution1 {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var result: Int = 0
        var cookies = s.sorted()

        for content in g.sorted() {
            guard let index = cookies.firstIndex(where: { $0 >= content }) else { break }
            result += 1
            cookies.remove(at: index)
        }

        return result
    }
}

class Solution2 {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let children = g.sorted()
        let cookies = s.sorted()
        
        var childIndex = 0
        var cookieIndex = 0
        var result = 0

        while childIndex < children.count && cookieIndex < cookies.count {
            if cookies[cookieIndex] >= children[childIndex] {
                result += 1
                childIndex += 1
            }
            
            cookieIndex += 1
        }
        
        return result
    }
}

// 둘 다 시간복잡도 O(n log n) (정렬) + O(n) (탐색) = O(n log n)
// 그러나 Solution1 코드에서 최악의 경우 시간복잡도가 O(n^2)가 될 수 있음
// Solution1에서 cookies 배열에서 조건에 맞는 쿠키를 찾기 위해 매번 선형 탐색을 수행하고,
// 찾은 쿠키를 배열에서 "제거하는 작업이 O(n) 시간이 걸리기 때문"이다.
// Solution2는 두 포인터를 사용하여 한 번의 선형 탐색으로 문제를 해결하므로 O(n) 시간이 걸린다.
// 따라서 Solution2가 더 효율적임
// ✨결론: remove(at:) 연산을 사용하지 않아서 Solution2가 더 효율적임

// 👀 배열의 구조적 특성
// Swift의 Array는 데이터가 연속적으로 붙어있습니다.
// 따라서 배열의 중간에서 요소를 제거하면, 그 뒤에 있는 모든 요소들을 앞으로 한 칸씩 이동시켜야 합니다.
// 이로 인해 remove(at:) 연산의 시간복잡도는 O(n)이 됩니다.
// 반면, 만약 배열의 끝에서 요소를 제거하는 경우에는 단순히 포인터만 이동하면 되기 때문에 훨씬 빠릅니다.
// 따라서 배열에서 요소를 제거할 때는 가능한 한 끝에서 제거하는 것이 성능에 유리합니다.