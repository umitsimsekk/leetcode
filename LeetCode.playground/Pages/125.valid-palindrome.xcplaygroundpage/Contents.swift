//: [Previous](@previous)

import Foundation
func getLowercase(char: Character) -> String {
    if let num = Int(String(char)){
        return String(char)
    }
    for c in "abcdefghijklmnopqrstuvwxyz" {
        if char == c {
            return String(c)
        }
    }
    for c in "ABCDEFGHIJKLMNOPQRSTUVWXYZ" {
        if char == c {
            return String(c.lowercased())
        }
    }
    return ""
}
func isPalindrome(_ s: String) -> Bool {
    var str = ""
    
    for char in s {
        str.append(getLowercase(char: char))
    }
    
    var reversedStr = ""
    for r in str.reversed() {
        reversedStr.append(String(r))
    }
    return str == reversedStr
}


