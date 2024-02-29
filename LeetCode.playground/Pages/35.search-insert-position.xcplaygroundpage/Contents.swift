//: [Previous](@previous)

import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var start = 0
    var end = nums.count - 1
    while start <= end {
        let mid = start + (end - start)/2
        if target < nums[mid] {
            end = mid - 1
        } else if target > nums[mid] {
            start = mid + 1
        } else {
            return mid
        }
    }
    return start
}

searchInsert([1,3,5,6], 5)
searchInsert([1,3,5,6], 2)
searchInsert([1,3,5,6], 7)
