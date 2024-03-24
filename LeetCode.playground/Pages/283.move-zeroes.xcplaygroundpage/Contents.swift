//: [Previous](@previous)

import Foundation

func moveZeroes(_ nums: inout [Int]) {
    var zeroCount = 0
    var zeroIndices = [Int]()
    for i in nums.indices {
        if nums[i] == 0 {
            zeroIndices.append(i)
            zeroCount += 1
        }
    }
    var nms = [Int]()
    for i in nums.indices {
        if !zeroIndices.contains(i) {
            nms.append(nums[i])
        }
    }
    for i in 0..<zeroCount {
        nms.append(0)
    }
    nums = nms
}
