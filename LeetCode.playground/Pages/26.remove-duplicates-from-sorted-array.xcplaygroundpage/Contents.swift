//: [Previous](@previous)

import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var index = 0
    while index < nums.count {
        if index > 0 && nums[index] == nums[index - 1] {
            nums.remove(at: index)
        } else {
            index += 1
        }
    }
    return nums.count
}


