while let input = readLine() {
    var isLowercase: Int = 0
    var isUpperCase: Int = 0
    var isNumber: Int = 0
    var isWhiteSpace: Int = 0
    for char in input {
        if char.isLowercase {
            isLowercase += 1
        } else if char.isUppercase {
            isUpperCase += 1
        } else if char.isNumber {
            isNumber += 1
        } else if char.isWhitespace {
            isWhiteSpace += 1
        }
    }
    print(isLowercase, isUpperCase, isNumber, isWhiteSpace)
}
