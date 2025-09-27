let counts = readLine()!.split(separator: " ").compactMap({Int($0)})
let arrCount = counts[0]
let qCounts = counts[1]
var arr: [Int] = []
var constants: [Int] = []
while let input = readLine() {
    if arr.count < arrCount {
        arr.append(Int(input)!)
    } else {
        constants.append(Int(input)!)
    }
}
arr.sort()
for constant in constants {
    if let index = arr.firstIndex(of: constant) {
        print(index)
    } else { print(-1) }
}
