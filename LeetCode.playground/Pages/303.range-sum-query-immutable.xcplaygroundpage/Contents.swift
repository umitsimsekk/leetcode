//: [Previous](@previous)

import UIKit

class NumArray {
    var nums : [Int]
    init(_ nums: [Int]) {
        self.nums = nums
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        var sum = 0
        for i in left...right{
            sum += nums[i]
        }
        return sum
    }
}

var numArr = NumArray([-2, 0, 3, -5, 2, -1])
numArr.sumRange(0, 2)
numArr.sumRange(2, 5)
numArr.sumRange(0, 5)
