// 백준 1032번 문제
// https://www.acmicpc.net/problem/1032

let input1 = """
3
config.sys
config.inf
configures
"""
let input2 = """
2
contest.txt
context.txt
"""
let input3 = """
3
c.user.mike.programs
c.user.nike.programs
c.user.rice.programs
"""
let input4 = """
4
a
a
b
b
"""
let input5 = """
1
onlyonefile
"""

func toLines(_ input: String) -> [String] {
    input.split(separator: "\n").map({ String($0) })
}

func run(input: [String]) -> String {
    // 파일 개수가 1개라면 유일한 파일 이름 반환
    guard Int(input[0]) ?? 0 > 1 else { return input.last ?? "" }
    // "파일 이름 문자열 -> 문자 배열" 변환
    let characterSet = input[1..<input.count].map({ $0.map({ $0 }) })
    var result: [Character] = []
    // 모든 파일명의 길이가 같다는 전제가 있기 때문에 파일명의 길이만큼만 순환
    Array(0..<(characterSet.first?.count ?? 0)).forEach { index in
        var comparedChar: Character?
        for chars in characterSet {
            // 첫 문자라면 저장
            guard comparedChar != nil else {
                comparedChar = chars[index]
                continue
            }
            // 첫 문자가 아니라면 비교하고, 문자가 다르면 패턴이 아니기 때문에 "?" 저장하고 순환 종료
            if comparedChar != chars[index] {
                comparedChar = "?"
                break
            }
        }
        // 문자 인덱스 별 결과 문자를 최종 문자 배열에 추가
        guard let comparedChar = comparedChar else { return }
        result.append(comparedChar)
    }
    // "문자 배열 -> 문자열" 병합
    return result.map({ String($0) }).joined()
}

func runAndPrint(input: [String]) {
    let result = run(input: input)
    print(result)
}

let input = toLines(input1)
runAndPrint(input: input)
