let input1 = "level"
let input2 = "baekjoon"
let input3 = "noon"

func run(input: String) -> Int {
    var result: Bool = true
    var leadingIndex = input.startIndex
    var trailingIndex = input.index(before: input.endIndex)
    for _ in 0..<(input.count/2) {
        if input[leadingIndex] != input[trailingIndex] {
            result = false
            break
        }
        leadingIndex = input.index(after: leadingIndex)
        trailingIndex = input.index(before: trailingIndex)
    }
    return result ? 1 : 0
}

print(run(input: input1))
