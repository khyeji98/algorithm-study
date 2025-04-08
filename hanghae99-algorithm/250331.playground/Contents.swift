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

func run(input: [String]) {
    // 입력값을 받는 부분은 백준과 차이가 있음
    let fileCount = Int(input[0])!
    /*
     let files = input[1...]는 반환 타입이 ArraySlice<String>라서 인덱스 0이 존재하지 않아 에러 발생
     let files = input[1...].map({ $0 })는 반환 타입이 Array<String>라서 정상적으로 동작
     백준과는 환경 차이로 인해 성공 여부가 달랐을 것으로 추측
     */
    let files = input[1...].map({ $0 })
    
    let firstFile = files[0]
    if fileCount == 1 {
        print(firstFile)
    } else {
        var result: String = ""
        let length = firstFile.count
        
        for index in 0..<length {
            let stringIndex = firstFile.index(firstFile.startIndex, offsetBy: index)
            let referenceChar = firstFile[stringIndex]
            var isMatched: Bool = true
            
            for file in files[1...] {
                let fileStringIndex = file.index(file.startIndex, offsetBy: index)
                if file[fileStringIndex] != referenceChar {
                    isMatched = false
                    break
                }
            }
            
            result.append(isMatched ? referenceChar : "?")
        }
        print(result)
    }
}

let input = toLines(input1)
run(input: toLines(input1))
