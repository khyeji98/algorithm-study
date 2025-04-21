class MyHashMap {
    private var keyValues: [Int: Int] = [:]
    
    init() {}
    
    func put(_ key: Int, _ value: Int) {
        keyValues[key] = value
    }
    
    func get(_ key: Int) -> Int {
        keyValues[key] ?? -1
    }
    
    func remove(_ key: Int) {
        keyValues.removeValue(forKey: key)
    }
}
