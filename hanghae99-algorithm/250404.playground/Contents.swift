class MyQueue<T> {
    private var input: [T]
    private var output: [T]

    init(_ input: [T] = []) {
        self.input = input
        self.output = []
    }
    
    func push(_ x: T) {
        input.append(x)
    }
    
    func pop() -> T {
        if output.isEmpty {
            output = input.reversed()
            input = []
        }
        return output.removeLast()
    }
    
    func peek() -> T {
        guard output.isEmpty else { return output.last! }
        return input.first!
    }
    
    func empty() -> Bool {
        input.isEmpty && output.isEmpty
    }
    
    func size() -> Int {
        input.count + output.count
    }
}

class MyStack {
    private var queue = MyQueue<Int>()
    
    init() {}
    
    func push(_ x: Int) {
        queue.push(x)
    }
    
    func pop() -> Int {
        var newQueue: [Int] = []
        while queue.size() > 1 {
            newQueue.append(queue.pop())
        }
        let output = queue.pop()
        queue = MyQueue(newQueue)
        return output
    }
    
    func top() -> Int {
        var newQueue: [Int] = []
        while queue.size() > 1 {
            newQueue.append(queue.pop())
        }
        let output = queue.pop()
        newQueue.append(output)
        queue = MyQueue(newQueue)
        return output
    }
    
    func empty() -> Bool {
        queue.empty()
    }
}

let stack = MyStack()
stack.push(1)
stack.push(2)
stack.top()
stack.pop()
stack.empty()
