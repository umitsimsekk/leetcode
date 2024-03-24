//: [Previous](@previous)

import UIKit

func countBits(_ n: Int) -> [Int] {
    var binaryArr = [Int]()
    
    for i in 0...n {
        var binaryString = String(i,radix: 2)
        var count = 0
        binaryString.filter { char in
            if String(char) == "1" {
                count += 1
                return true
            }
            return false
        }
        binaryArr.append(count)
    }
    return binaryArr
}
countBits(2)
countBits(5)
