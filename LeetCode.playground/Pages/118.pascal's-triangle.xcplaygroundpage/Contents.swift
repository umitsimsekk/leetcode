//: [Previous](@previous)

import Foundation

func generate(_ numRows: Int) -> [[Int]] {
    var result = [[1]]
    for i in 1..<numRows {
        let last = result[result.count-1]
        var nums = [Int]()
        
        for j in 0..<i {
            if j != 0 {
                nums.append(last[j] + last[j-1])
            } else {
                nums.append(last[j])
            }
        }
        nums.append(1)
        result.append(nums)
    }
    return result
}
generate(6)
