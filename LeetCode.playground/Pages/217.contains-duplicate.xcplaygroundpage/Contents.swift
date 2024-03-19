//: [Previous](@previous)

import Foundation

func containsDuplicate(_ nums: [Int]) -> Bool {
    let setArr : Set<Int> = Set(nums)
    let output = setArr.count == nums.count ? false : true
    return output
}
containsDuplicate([1,1,1,3,3,4,3,2,4,2])
containsDuplicate([1,2,3,1])
containsDuplicate([1,2,3,4])
