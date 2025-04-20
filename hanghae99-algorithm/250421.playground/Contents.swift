_ = readLine()
let students = readLine()!.split(separator: " ").map{String($0)}
var results: [String: Int] = [:]
for student in students {
    results.updateValue(0, forKey: student)
}
while let input = readLine() {
    if input.contains(" ") {
        let picks = input.split(separator: " ").map{String($0)}
        picks.forEach { pick in
            results[pick]! += 1
        }
    } else {
        results[input]! += 1
    }
}
let sorted = results.sorted(by: {
    if $0.value == $1.value {
        return $0.key < $1.key
    } else {
        return $0.value > $1.value
    }
})
for student in sorted {
    print("\(student.key) \(student.value)")
}
