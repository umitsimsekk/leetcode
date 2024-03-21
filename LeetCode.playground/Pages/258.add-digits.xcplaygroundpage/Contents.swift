//: [Previous](@previous)

import Foundation

func addDigits(_ num: Int) -> Int {
    var numStr = String(num)
    
    if numStr.count == 1 {
        return 0
    }
    var temp = 0
    while true {
        for char in numStr {
            temp += Int(String(char))!
        }
        numStr = String(temp)
        if temp <= 9 {
            return temp
            
        }
        temp = 0
    }
}
addDigits(38)
addDigits(2)
addDigits(45)
