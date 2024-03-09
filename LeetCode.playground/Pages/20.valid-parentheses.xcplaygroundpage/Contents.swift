
import Foundation


func isValid(_ s: String) -> Bool {
    var stack = [Character]()
    
    var dict : [Character : Character] = [
        "(" : ")",
        "[" : "]",
        "{" : "}"
    ]
    for char in s {
        if (!stack.isEmpty && dict[stack.last!] == char ) {
            stack.removeLast()
        } else {
            stack.append(char)
        }
    }
    return stack.isEmpty
}

