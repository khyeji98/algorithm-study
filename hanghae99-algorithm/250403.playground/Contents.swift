class MyQueue {
    private var input: [Int] = []
    private var output: [Int] = []

    init() {}
    
    func push(_ x: Int) {
        input.append(x)
    }
    
    func pop() -> Int {
        if output.isEmpty {
            output = input.reversed()
            input.removeAll()
        }
        return output.removeLast()
    }
    
    func peek() -> Int {
        guard output.isEmpty else { return output.last! }
        return input.first!
    }
    
    func empty() -> Bool {
        return input.isEmpty && output.isEmpty
    }
}

let queue = MyQueue()
queue.push(1)
queue.push(2)
queue.pop()
queue.peek()
