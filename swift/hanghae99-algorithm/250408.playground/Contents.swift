final class StringStack {
    private var characters: [Character] = []
    
    init() {}
    
    func push(_ char: Character) {
        characters.append(char)
    }
    
    func pop() -> Character {
        characters.removeLast()
    }
    
    func peek() -> Character? {
        characters.last
    }
    
    func isEmpty() -> Bool {
        characters.isEmpty
    }
}

var goodWords: Int = Int(readLine()!)!
while let input = readLine() {
    let storage = StringStack()
    for char in input {
        if let last = storage.peek() {
            if char == last {
                _ = storage.pop()
            } else {
                storage.push(char)
            }
        } else {
            storage.push(char)
        }
    }
    if !storage.isEmpty() {
        goodWords -= 1
    }
}
print(goodWords)
