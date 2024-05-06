//: [Previous](@previous)

import Foundation

func reverseWords(_ s: String) -> String {
    var arr = s.split(separator: " ")
    var reversedArr = [String]()
    
    for word in arr {
        var reversedWord = word.reversed()
        reversedArr.append(String(reversedWord))
    }
    return reversedArr.joined(separator: " ")
}
reverseWords("Let's take LeetCode contest")
