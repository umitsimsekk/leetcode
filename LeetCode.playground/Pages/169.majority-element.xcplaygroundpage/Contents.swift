//: [Previous](@previous)

import Foundation

func majorityElement(_ nums: [Int]) -> Int {
    var dict = [Int: Int]()
    
    for num in nums {
        if dict.keys.contains(num) {
            dict[num]! += 1
        } else {
            dict[num] = 1
        }
    }
    var temp = 0
    var output = 0
    for (key,value) in dict {
        if value > temp {
            temp = value
            output = key
        }
    }
    
    return output
}

