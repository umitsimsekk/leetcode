//: [Previous](@previous)

import Foundation

func arrangeCoins(_ n: Int) -> Int {
    var output = 0
    var nn = n
    var i = 1
    while true {
        nn -= i
        if nn < 0 {
            break
        }
        output += 1
        i += 1
    }

    return output
}

