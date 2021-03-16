import Foundation

struct Stack<T: Equatable> {
    // We declare the stack as an array of a certain type with which you will interact using the push, pop and peek methods.
    fileprivate var array = [T]()
    
    // Checking the stack for emptiness
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    // Outputs the number of elements in the stack
    var count: Int {
        return array.count
    }
    
    // The push method takes a single parameter, an element to add to top of the stack.
    mutating func push(_ element: T) {
        // Notice that a push operation puts the new element at the end of the array, not the beginning. Inserting at the beginning of an array is expensive, an O(n) operation, because it requires all existing array elements to be shifted in memory.
        // Adding at the end is O(1); it always takes the same amount of time, regardless of the size of the array.
        array.append(element)
    }
    
    // The pop method returns an optional T. The return type is optional to handle the case where the stack is empty in the first place. If you try to pop an empty stack, then you’ll get a nil.
    mutating func pop() -> T? {
        // Removing the last element using "popLast"
        return array.popLast()
    }
    
    // Removing all items on the stack
    mutating func clear() {
        self.array.removeAll()
    }
    
    // Will dump the last added element on the stack, if it exists
    var top: T? {
        return array.last
    }
}
