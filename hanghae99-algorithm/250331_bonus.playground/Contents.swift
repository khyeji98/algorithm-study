let input1 = "level"
let input2 = "baekjoon"
let input3 = "noon"

func run(input: String) -> Int {
    var result: Bool = true
    for index in 0..<(input.count/2) {
        let leadingIndex = input.index(input.startIndex, offsetBy: index)
        let trailingIndex = input.index(input.endIndex, offsetBy: -index-1)
        if input[leadingIndex] != input[trailingIndex] {
            result = false
            break
        }
    }
    return result ? 1 : 0
}

print(run(input: input3))
