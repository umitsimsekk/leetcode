//: [Previous](@previous)

import Foundation

func singleNumber(_ nums: [Int]) -> Int {
    var dict = [Int: Int]()
    
    for num in nums {
        if dict[num] == nil {
            dict[num] = 1
        } else {
            dict.removeValue(forKey: num)
        }
        print(dict)
    }
    return dict.first!.key
}

