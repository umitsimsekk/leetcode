//: [Previous](@previous)

import Foundation

func convertToBase7(_ num: Int) -> String {
    var output = ""
    var n = abs(num)
    var temp = 0
    while true {
        temp = n / 7
        let val = temp * 7
        output += String(n-val)
        n = temp
        if n == 0 {
            break
        }
    }
    var k = num < 0 ? "-" : ""
    for char in output.reversed(){
        k += String(char)
    }
    return k
}

