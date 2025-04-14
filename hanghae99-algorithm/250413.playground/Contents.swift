_ = readLine()
var xNodes: [Int: Int] = [:]
var yNodes: [Int: Int] = [:]
while let input = readLine() {
    let splitted = input.split(separator: " ").compactMap({ Int(String($0)) })
    let x = splitted[0]
    let y = splitted[1]
    xNodes[x, default: 0] += 1
    yNodes[y, default: 0] += 1
}
let xMatches = xNodes.filter({ $0.value >= 2 }).count
let yMatches = yNodes.filter({ $0.value >= 2 }).count
print(xMatches+yMatches)
