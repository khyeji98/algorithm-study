let input1 = "0!"
let input2 = "1!"
let input3 = "!0"
let input4 = "!1"
let input5 = "!!0!!"
let input6 = "!!1!!"

func run(input: String) {
    let numberIndex = input.firstIndex(where: { $0.isNumber })!
    var number = Int(String(input[numberIndex]))!
    let factorialCount = input.distance(from: numberIndex, to: input.endIndex) - 1
    let logicalNotCount = input.distance(from: input.startIndex, to: numberIndex)
    if factorialCount > 0 {
        number = 1
    }
    print(logicalNotCount % 2 == 0 ? number : (number == 0 ? 1 : 0))
}

// 백준 제출용
_ = readLine()
while let input = readLine() {
    let numberIndex = input.firstIndex(where: { $0.isNumber })!
    var number = Int(String(input[numberIndex]))!
    let factorialCount = input.distance(from: numberIndex, to: input.endIndex) - 1
    let logicalNotCount = input.distance(from: input.startIndex, to: numberIndex)
    if factorialCount > 0 {
        number = 1
    }
    print(logicalNotCount % 2 == 0 ? number : (number == 0 ? 1 : 0))
}
