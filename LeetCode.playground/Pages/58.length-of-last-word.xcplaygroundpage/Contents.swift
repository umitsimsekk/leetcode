//: [Previous](@previous)

import Foundation

func lengthOfLastWord(_ s: String) -> Int {
    var arr = s.split(separator: " ")    
    return arr.last!.count
}

lengthOfLastWord("Hello World")
lengthOfLastWord("   fly me   to   the moon  ")
lengthOfLastWord("luffy is still joyboy")
