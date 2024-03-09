
import Foundation


func mergeTwoLists(_ list1: [Int], _ list2: [Int]) -> [Int] {
    var stack = [Int]()
    var count = list1.count + list2.count
    var lst1 = list1
    var lst2 = list2
    
    for _ in 0..<count {
        if lst1.count == 0 {
            stack += lst2
            return stack
        }
        if lst2.count == 0 {
            stack += lst1
            return stack
        }
        
        let lst1First = lst1.first!
        let lst2First = lst2.first!
        
        if lst1First <= lst2First {
            stack.append(lst1First)
            lst1.removeFirst()
        } else {
            stack.append(lst2First)
            lst2.removeFirst()

        }
    }
    return stack
}

