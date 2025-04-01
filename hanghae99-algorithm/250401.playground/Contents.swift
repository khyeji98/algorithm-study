while let input = readLine() {
    var result: [Int] = Array(repeating: 0, count: 4)
    for char in input {
        switch char.asciiValue! {
        case 32:
            result[3] += 1
        case 48...57:
            result[2] += 1
        case 65...90:
            result[1] += 1
        case 97...122:
            result[0] += 1
        default:
            break
        }
    }
    print(result[0], result[1], result[2], result[3])
}
