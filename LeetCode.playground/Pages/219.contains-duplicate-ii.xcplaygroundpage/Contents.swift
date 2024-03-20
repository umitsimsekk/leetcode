//: [Previous](@previous)

import Foundation

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    
    for i in 0..<nums.count {
        for j in i+1..<nums.count{
            if nums[i] == nums[j] && abs(i-j) <= k{
             return true
            }
        }
    }
    
    return false
}
containsNearbyDuplicate([1,2,3,1,2,3], 2)
containsNearbyDuplicate([1,0,1,1], 1)
containsNearbyDuplicate([1,2,3,1], 3)
