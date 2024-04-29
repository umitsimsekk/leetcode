//: [Previous](@previous)

import Foundation

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var maxx = 0
    var tempValue = 0
    
    for num in nums {
        if num == 1 {
            tempValue += 1
            maxx = max(maxx, tempValue)
        } else {
            tempValue = 0
        }
    }
    return maxx
}
findMaxConsecutiveOnes([1,1,0,1,1,1])
