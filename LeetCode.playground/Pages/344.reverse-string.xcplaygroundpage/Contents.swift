//: [Previous](@previous)

import Foundation

func reverseString(_ s: inout [Character]) {
    var tempArr = [Character]()
    
    for char in s.reversed() {
        tempArr.append(char)
    }
    s = tempArr
}

