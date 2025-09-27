class MyStack<T> {
    private var elements: [T]
    
    init(elements: [T] = []) {
        self.elements = elements
    }
    
    func push(_ x: T) {
        elements.append(x)
    }
    
    func pop() -> T {
        elements.removeLast()
    }
    
    func first() -> T? {
        elements.first
    }
    
    func last() -> T? {
        elements.last
    }
    
    func isEmpty() -> Bool {
        elements.isEmpty
    }
    
    func reversed() -> [T] {
        elements.reversed()
    }
    
    func clear() {
        elements.removeAll()
    }
}

class MyQueue {
    private var input: MyStack<Int> = MyStack()
    private var output: MyStack<Int> = MyStack()

    init() {}
    
    func push(_ x: Int) {
        input.push(x)
    }
    
    func pop() -> Int {
        if output.isEmpty() {
            output = MyStack(elements: input.reversed())
            input.clear()
        }
        return output.pop()
    }
    
    func peek() -> Int {
        guard output.isEmpty() else { return output.last()! }
        return input.first()!
    }
    
    func empty() -> Bool {
        input.isEmpty() && output.isEmpty()
    }
}

let queue = MyQueue()
queue.push(1)
queue.push(2)
queue.peek()
queue.pop()
queue.empty()
