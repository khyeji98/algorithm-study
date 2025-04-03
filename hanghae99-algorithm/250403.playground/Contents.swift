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
        /*
         guard output.isEmpty else { return output[output.endIndex - 1] }
         return input[input.startIndex]
         두 코드는 기능과 동작이 모두 동일하지만, 코드표현력 측면에서 last,first와 같이 명시적인 프로퍼티 사용을 최종 최적화로 생각했습니다.
         */
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
