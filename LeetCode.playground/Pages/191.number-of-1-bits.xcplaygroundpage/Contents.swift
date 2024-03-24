//: [Previous](@previous)

import Foundation

func hammingWeight(_ n: Int) -> Int {
    var n = n
    var count = 0
    while n > 0 {
        count += n % 2 == 0 ? 0 : 1
        n /= 2
    }
    return count
}
}
hammingWeight(00000000000000000000000000001011)
