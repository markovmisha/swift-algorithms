import UIKit

struct Stack<T: Equatable> {
    
    fileprivate var array = [T]()
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    mutating func push(_ element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T? {
        return array.popLast()
    }
    
    mutating func clear() {
        self.array.removeAll()
    }
    
    var top: T? {
        return array.last
    }
}
